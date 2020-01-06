<?php
/**
 * Neo Billing -  Accounting,  Invoicing  and CRM Software
 * Copyright (c) Rajesh Dukiya. All Rights Reserved
 * ***********************************************************************
 *
 *  Email: support@ultimatekode.com
 *  Website: https://www.ultimatekode.com
 *
 *  ************************************************************************
 *  * This software is furnished under a license and may be used and copied
 *  * only  in  accordance  with  the  terms  of such  license and with the
 *  * inclusion of the above copyright notice.
 *  * If you Purchased from Codecanyon, Please read the full License from
 *  * here- http://codecanyon.net/licenses/standard/
 * ***********************************************************************
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Invoices_model extends CI_Model
{
    var $table = 'invoices';
    var $column_order = array(null, 'tid', 'name', 'invoicedate', 'total', 'status', null);
    var $column_search = array('tid', 'name', 'invoicedate', 'total');
    var $order = array('tid' => 'desc');

    public function __construct()
    {
        parent::__construct();
    }

    public function lastinvoice()
    {
        $this->db->select('tid');
        $this->db->from($this->table);
        $this->db->order_by('tid', 'DESC');
        $this->db->limit(1);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->row()->tid;
        } else {
            return 1000;
        }
    }

    public function invoice_details($id, $eid = '')
    {


        $this->db->select('invoices.*,customers.*,customers.id AS cid,billing_terms.id AS termid,billing_terms.title AS termtit,billing_terms.terms AS terms');
        $this->db->from($this->table);
        $this->db->where('invoices.tid', $id);
        if ($this->aauth->get_user()->roleid == 2) {//change by sagar---01-01-2019
           
            //$this->db->where('eid', $id);
        }else{
            if ($eid) {
                $this->db->where('invoices.eid', $eid);
            }
        }
       
        $this->db->join('customers', 'invoices.customer_id = customers.id', 'left');
        $this->db->join('billing_terms', 'billing_terms.id = invoices.term', 'left');
        $query = $this->db->get();
        return $query->row_array();

    }

    public function invoice_products($id)
    {

        $this->db->select('*');
        $this->db->from('invoice_items');
        $this->db->where('tid', $id);
        $query = $this->db->get();
        return $query->result_array();

    }

    public function currencies()
    {

        $this->db->select('*');
        $this->db->from('currencies');

        $query = $this->db->get();
        return $query->result_array();

    }

    public function currency_d($id)
    {
        $this->db->select('*');
        $this->db->from('currencies');
        $this->db->where('id', $id);
        $query = $this->db->get();
        return $query->row_array();
    }

    public function warehouses()
    {
        $this->db->select('*');
        $this->db->from('product_warehouse');
        $query = $this->db->get();
        return $query->result_array();

    }

    public function invoice_transactions($id)
    {

        $this->db->select('*');
        $this->db->from('transactions');
        $this->db->where('tid', $id);
        $this->db->where('ext', 0);
        $query = $this->db->get();
        return $query->result_array();

    }

    public function invoice_delete($id, $eid = '')
    {

        $this->db->trans_start();

		$this->db->select('status');
        $this->db->from('invoices');
        $this->db->where('tid', $id);
		$query = $this->db->get();
        $result = $query->row_array();

        if ($eid) {
            $res = $this->db->delete('invoices', array('tid' => $id, 'eid' => $eid));
        } else {
            $res = $this->db->delete('invoices', array('tid' => $id));
        }

		
        if ($res) {
			if($result['status']!='canceled'){
            $this->db->select('pid,qty');
            $this->db->from('invoice_items');
            $this->db->where('tid', $id);
            $query = $this->db->get();
            $prevresult = $query->result_array();

            foreach ($prevresult as $prd) {
                $amt = $prd['qty'];
                $this->db->set('qty', "qty+$amt", FALSE);
                $this->db->where('pid', $prd['pid']);
                $this->db->update('products');
            }
			}


            $this->db->delete('invoice_items', array('tid' => $id));

            if ($this->db->trans_complete()) {
                return true;
            } else {
                return false;
            }
        }
    }


    private function _get_datatables_query($opt = '')
    {
       
        $id=$this->aauth->get_user()->id;

       // echo $id;

        $this->db->from($this->table);
       

        $this->db->join('customers', 'invoices.customer_id=customers.id', 'left');
        if ($this->aauth->get_user()->roleid == 2) {//change by sagar---01-01-2019
           
            $this->db->where('salesperson_id', $id);
        }else if($this->aauth->get_user()->roleid == 3){//change by sagar---06-01-2019
            $this->db->where('`booth_id` IN (SELECT `id` FROM `showbooth` where teamleader_id LIKE "%'.$id.'%")', NULL, FALSE);
        }else{
            if ($opt) {
                $this->db->where('invoices.eid', $opt);
            }
        }

        $i = 0;

        foreach ($this->column_search as $item) // loop column
        {
            if ($_POST['search']['value']) // if datatable send POST for search
            {

                if ($i === 0) // first loop
                {
                    $this->db->group_start(); // open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
                    $this->db->like($item, $_POST['search']['value']);
                } else {
                    $this->db->or_like($item, $_POST['search']['value']);
                }

                if (count($this->column_search) - 1 == $i) //last loop
                    $this->db->group_end(); //close bracket
            }
            $i++;
        }

        if (isset($_POST['order'])) // here order processing
        {
            $this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
        } else if (isset($this->order)) {
            $order = $this->order;
            $this->db->order_by(key($order), $order[key($order)]);
        }
    }

    function get_datatables($opt = '')
    {
        $this->_get_datatables_query($opt);
        if ($_POST['length'] != -1)
            $this->db->limit($_POST['length'], $_POST['start']);

        $query = $this->db->get();
        return $query->result();
    }

    function count_filtered($opt = '')
    {
        $this->_get_datatables_query($opt);
        if ($opt) {
            $this->db->where('eid', $opt);
        }
        $query = $this->db->get();
        return $query->num_rows();
    }

    public function count_all($opt = '')
    {
        $this->db->from($this->table);
        if ($opt) {
            $this->db->where('eid', $opt);
        }
        return $this->db->count_all_results();
    }


    public function billingterms()
    {
        $this->db->select('id,title');
        $this->db->from('billing_terms');
        $this->db->where('type', 1);
        $this->db->or_where('type', 0);
        $query = $this->db->get();
        return $query->result_array();
    }

    public function employee($id)
    {
        $this->db->select('employee_profile.name,employee_profile.sign,aauth_users.roleid');
        $this->db->from('employee_profile');
        $this->db->where('employee_profile.id', $id);
        $this->db->join('aauth_users', 'employee_profile.id = aauth_users.id', 'left');
        $query = $this->db->get();
        return $query->row_array();
    }

    public function meta_insert($id, $type, $meta_data)
    {

        $data = array('type' => $type, 'rid' => $id, 'col1' => $meta_data);
        if ($id) {
            return $this->db->insert('meta_data', $data);
        } else {
            return 0;
        }
    }

    public function attach($id)
    {
        $this->db->select('meta_data.*');
        $this->db->from('meta_data');
        $this->db->where('meta_data.type', 1);
        $this->db->where('meta_data.rid', $id);
        $query = $this->db->get();
        return $query->result_array();
    }

    public function meta_delete($id,$type,$name)
    {
        if (@unlink(FCPATH . 'userfiles/attach/' . $name)) {
            return $this->db->delete('meta_data', array('rid' => $id, 'type' => $type, 'col1' => $name));
        }
    }
    //arzoo to inset data by API
    function insert_api($data){
        //check if available
        $ret = $this->db->where('invoices_id', $data['invoices_id'])->select('tid')->from($this->table)->get()->row();
        if(!isset($ret)){
            $this->db->select_max('tid');
            $result = $this->db->get($this->table)->row();  
            $tid =  $result->tid;
            $tid++;
            $data['tid'] = $tid;
        //insert 
        $result = $this->db->insert($this->table, $data);
        
        return $tid;
        }else{
            $this->db->delete($this->table, array('tid' => $ret->tid)); 
        }
        return $ret->tid;
    }
    //arzoo - insert data into invoice items
    function insert_item_api($data){
        $result = $this->db->insert('invoice_items', $data);
        $result = $this->db->insert_id();
        return $result;
    }
    //arzoo to get top products details
    function getTopSelling($show_id){
        $this->db->select('count(invoice_items.id) as cnt, pid, product');
        $this->db->from('invoices');
        $this->db->join('invoice_items',"invoices.tid =  invoice_items.tid","inner");
        $this->db->join('shows',"shows.location_id = invoices.location_id","inner");
        if($show_id!=0)
        $this->db->where("shows.id",$show_id);
        $this->db->group_by('pid');
        $this->db->order_by('cnt','DESC');
        return $this->db->get()->result_array();
    }
    //arzoo to get top products details
    function getOrderDetails($show_id){
        $this->db->select('invoices.*,employee_profile.name as emp_name');
        $this->db->from('invoices');
        $this->db->join('shows',"shows.location_id = invoices.location_id"); 
        $this->db->join('employee_profile',"employee_profile.id = invoices.salesperson_id","left"); 
        $this->db->where("shows.id",$show_id);
        return $this->db->get()->result_array();
    }
    //retive amount for sales person and show
    public function getSalesPersonAmount($sp_id, $loc_id){
        $this->db->select('sum(total) as amt');
        $this->db->from('invoices');
        $this->db->where("salesperson_id",$sp_id);
        $this->db->where("location_id",$loc_id);
        $ret =  $this->db->get()->row();
        if(isset($ret))
        return $ret->amt;
        else return 0;
    }
    public function updateBoothInvoice($booth_id, $tid){
        $this->db->where('tid',$tid);
        $this->db->set('booth_id', $booth_id);
        $this->db->update('invoices');
    }
}
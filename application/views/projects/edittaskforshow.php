<article class="content">

    <div class="card card-block">

        <div id="notify" class="alert alert-success" style="display:none;">

            <a href="#" class="close" data-dismiss="alert">&times;</a>



            <div class="message"></div>

        </div>

        <div class="grid_3 grid_4">
        

         <h3><?php echo $this->lang->line('Edit') ?> Task</h3>

                <hr>

              <form method="post" id="data_form" class="form-horizontal">

                <div class="form-group row">

                <label class="col-sm-2 col-form-label" for="name"><?php echo $this->lang->line('Title') ?><i style="color: red">*</i></label>

                    <div class="col-sm-6">

                        <input type="text" placeholder="Task Title"

                               class="form-control margin-bottom  required" name="name"

                               value="<?php echo $task->showtaskname; ?>">

                    </div>

                </div>

               <div class="form-group row">

                       <label class="col-sm-2 col-form-label" for="name"><?php echo $this->lang->line('Status') ?><i style="color: red">*</i></label>

                       <div class="col-sm-4">

                        <select name="status" class="form-control">                         

                            <?php 

                            if($task->showtaskstatus=='Due')
                            {
                                 echo"<option selected value='Due'>".$this->lang->line('Due')."</option>";
                            }
                            else
                            {
                                 echo"<option value='Due'>".$this->lang->line('Due')."</option>";
                            }

                            if($task->showtaskstatus=='Done')
                            {
                                 echo "<option selected value='Done'>".$this->lang->line('Done')."</option>";
                            }
                            else
                            {
                                 echo "<option value='Done'>".$this->lang->line('Done')."</option>";
                            }

                            if($task->showtaskstatus=='Progress')
                            {
                                 echo "<option selected value='Progress'>".$this->lang->line('Progress')."</option>"; 
                            }
                            else
                            {
                                echo "<option value='Progress'>".$this->lang->line('Progress')."</option>";  
                            }

                           
                            ?>

                        </select>

                    </div>

                </div>

                 <div class="form-group row">

                     <label class="col-sm-2 col-form-label"

                           for="pay_cat"><?php echo $this->lang->line('Priority') ?><i style="color: red">*</i></label>



                    <div class="col-sm-4">

                        <select name="priority" class="form-control">

                            <option <?php if($task->showpriority=='Low'){ ?> selected <?php } ?> value='Low'>Low</option>

                            <option   <?php if($task->showpriority=='Medium'){ ?> selected <?php } ?>  value='Medium'>Medium</option>

                            <option   <?php if($task->showpriority=='High'){ ?> selected <?php } ?>  value='High'>High</option>

                            <option   <?php if($task->showpriority=='Urgent'){ ?> selected <?php } ?>  value='Urgent'>Urgent</option>

                        </select>





                    </div>



                </div>


                <div class="form-group row">



                    <label class="col-sm-2 col-form-label"

                           for="pay_cat"><?php echo $this->lang->line('Milestones') ?><i style="color: red">*</i></label>



                    <div class="col-sm-4">

                        <select name="milestone" id="mileid" class="form-control select-box required">
                            <option value=''></option>

                            <?php

                            foreach ($milestones as $row) {

                                $cid = $row['id'];

                                $title = $row['name'];

                                if($task->milestone_id==$cid)
                                {
                                    echo "<option selected value=".$cid.">".$title."</option>";
                                }
                                else
                                {
                                    echo "<option value=".$cid.">".$title."</option>";
                                }

                                

                            }

                            ?>

                        </select>

                    </div>



                </div>

                 <div class="form-group row">



                    <label class="col-sm-2 control-label"

                           for="staskdate"><?php echo $this->lang->line('Start Date') ?><i style="color: red">*</i></label>



                    <div class="col-sm-2">

                        <input type="text" value="<?php echo $task->showtaskstart; ?>" id="start_date" class="form-control required"

                               placeholder="Start Date" name="staskdate"

                                autocomplete="false">

                    </div>

                </div>

                 <div class="form-group row">



                    <label class="col-sm-2 control-label"

                           for="taskdate"><?php echo $this->lang->line('Due Date') ?><i style="color: red">*</i></label>



                    <div class="col-sm-2">

                        <input type="text" value="<?php echo $task->showtaskdue; ?>" id="end_date" class="form-control required"

                               placeholder="End Date" name="taskdate"

                                autocomplete="false">

                    </div>

                </div>

                 <div class="form-group row">



                    <label class="col-sm-2 col-form-label"

                           for="pay_cat"><?php echo $this->lang->line('Assign to') ?><i style="color: red">*</i></label>



                    <div class="col-sm-4">

                        <select name="employee" class="form-control required select-box ">

                            <option value=''></option>

                            <?php

                            foreach ($emp as $row) {

                                $cid = $row['eid'];

                                $title = $row['name'];

                                if($task->showtaskeid==$cid)
                                {
                                     echo "<option selected value='$cid'>$title</option>";
                                }
                                else
                                {
                                     echo "<option value='$cid'>$title</option>";
                                }

                            
                            }

                            foreach($sales[0] as $sl)
                            {
                              $sid=$sl['id'];
                              $sname=$sl['name'];

                              if($task->showtaskeid==$sid)
                                {
                                     echo "<option selected value='$sid'>$sname</option>";
                                }
                                else
                                {
                                     echo "<option value='$sid'>$sname</option>";
                                }


                            }



                            ?>

                        </select>





                    </div>

                </div>
                 <div class="form-group row">



                    <label class="col-sm-2 control-label"

                           for="content"><?php echo $this->lang->line('Description') ?><i style="color: red">*</i></label>



                    <div class="col-sm-10">

                        <textarea class="summernote required"

                                  placeholder=" Note"

                                  autocomplete="false" rows="10" name="content"><?php  echo $task->showtaskdescription?></textarea>

                    </div>

                </div>

                <div class="form-group row">



                    <label class="col-sm-2 col-form-label"></label>



                    <div class="col-sm-4">

                        <input type="submit" id="submit-data" class="btn btn-success margin-bottom"

                               value="<?php echo $this->lang->line('Edit') ?>" data-loading-text="Adding...">

                        <input type="hidden" value="projects/edittask" id="action-url">

                        <input type="hidden" value="<?php echo $_GET['id'] ?>" name="project">

                    </div>



                </div>

                  <div class="form-group row"><label class="col-sm-2 col-form-label"></label>

                    <p>Process may take sometime, if email communication is enabled.</p></div>

              </form>

          </div>


    </div>
</article>

<script type="text/javascript">


    $(function () {

        $('.select-box').select2();



        $('.summernote').summernote({

            height: 250,

            toolbar: [

                // [groupName, [list of button]]

                ['style', ['bold', 'italic', 'underline', 'clear']],

                ['font', ['strikethrough', 'superscript', 'subscript']],

                ['fontsize', ['fontsize']],

                ['color', ['color']],

                ['para', ['ul', 'ol', 'paragraph']],

                ['height', ['height']],

                ['fullscreen', ['fullscreen']],

                ['codeview', ['codeview']]

            ]

        });

    });

</script>

<script>
    
    $(document).ready(function(){

        var milestone_start_date='';
        var milestone_end_date='';

        $('#start_date').datepicker({
            dateFormat: 'yy-mm-dd', 
              onSelect: function (selected) {
              var dt = new Date(selected);
               $("#end_date").datepicker("option", "minDate", dt);
           }
                            
        });

        $('#end_date').datepicker({
            dateFormat: 'yy-mm-dd',
        });


        $('#mileid').change(function(){

            var milestone_id=$(this).val();

                  $.ajax({

                        url: baseurl + 'projects/getmilestonedate',

                        type: 'POST',

                        data: {'milestone_id': milestone_id},

                        dataType: 'json',

                        success: function (data) {

                            milestone_start_date=data.sdate;
                            //milestone_end_date=data.edate;

                            $('#start_date').val(milestone_start_date);
                             $('#end_date').val(milestone_start_date);

                            $('#start_date').datepicker("option","minDate",data.sdate);

                        },
                    });
        });

    });

</script> 
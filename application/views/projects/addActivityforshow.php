<article class="content">
    <div class="card card-block">
        <div id="notify" class="alert alert-success" style="display:none;">
            <a href="#" class="close" data-dismiss="alert">&times;</a>

            <div class="message"></div>
        </div>
        <div class="grid_3 grid_4">


            <form method="post" id="data_form" class="form-horizontal">

                <h3><?php echo $this->lang->line('Add activity') ?></h3>
                <p>
                    <b><a href="#" class="btn btn-primary btn-sm rounded">
                                            <?php echo $project['show_id']; ?> 
                                </a>  
                                <a href="#" class="btn btn-primary btn-sm rounded">
                                           <?php echo $project['show_name']; ?> 
                                </a>
                    </b>
                </p>
                <hr>

                <div class="form-group row">

                    <label class="col-sm-2 col-form-label" for="name"><?php echo $this->lang->line('Title') ?></label>

                    <div class="col-sm-10">
                        <input type="text" placeholder="Activity Title"
                               class="form-control margin-bottom  required" name="name">
                               <input type="hidden" name="pr_id" value="<?php echo $project['id']; ?> ">
                               <input type="hidden" name="pr_name" value="<?php echo $project['show_name']; ?> ">
                    </div>
                </div>


                <div class="form-group row">

                    <label class="col-sm-2 col-form-label"></label>

                    <div class="col-sm-4">
                        <input type="submit" id="submit-data" class="btn btn-success margin-bottom"
                               value="<?php echo $this->lang->line('Add') ?>" data-loading-text="Adding...">
                        <input type="hidden" value="projects/addactivityforshow" id="action-url">
                        <input type="hidden" value="<?php echo $prid ?>" name="project">
                    </div>
                </div>


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
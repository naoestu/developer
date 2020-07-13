<section class="content-header">
    <h1><?php echo $gsprache->pages;?></h1>
    <ol class="breadcrumb">
        <li><a href="admin.php"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="admin.php?w=pn"><i class="fa fa-globe"></i> CMS</a></li>
        <li><a href="admin.php?w=pp"><i class="fa fa-copy"></i> <?php echo $gsprache->pages;?></a></li>
        <li class="active"><?php echo $gsprache->overview;?></li>
    </ol>
</section>

<section class="content">

    <div class="row">
        <div class="col-md-12">
            <?php echo $gsprache->pages;?> <a href="admin.php?w=pp&amp;d=ad"><span class="btn btn-success btn-sm"><i class="fa fa-plus-circle"></i> <?php echo $gsprache->add;?></span></a>
        </div>
    </div>

    <hr>

    <div class="row">
        <div class="col-md-12">
            <div class="box box-primary">
                <div class="box-body table-responsive">

                    <form method="post" action="admin.php?w=pp">

                        <input type="hidden" name="token" value="<?php echo token();?>">
                        <input type="hidden" name="pageorder" value="true">

                        <table id="dataTable" class="table table-bordered table-hover">

                            <thead>
                            <tr>
                                <th><?php echo $sprache->title;?></th>
                                <th>ID</a></th>
                                <th><?php echo $sprache->languages;?></th>
                                <th><?php echo $sprache->released;?></th>
                                <th><?php echo $sprache->author;?></th>
                                <th><?php echo $sprache->date;?></th>
                                <th><?php echo $sprache->sort;?></th>
                                <th><?php echo $gsprache->action;?></th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php foreach ($table as $table_row) { ?>
                            <tr>
                                <td><a href="<?php echo $table_row['link'];?>" alt="<?php echo $table_row['title'];?>" target="_blank"><?php echo $table_row['title'];?></a></td>
                                <td><?php echo $table_row['id'];?></td>
                                <td><?php echo implode(', ',$table_row['languages']);?></td>
                                <td><?php echo $table_row['released'];?></td>
                                <td><?php echo $table_row['author'];?></td>
                                <td><?php echo $table_row['date'];?></td>
                                <td><label class="form-inline"><input class="input-mini" type="number" name="pageid[<?php echo $table_row['id'];?>]" value="<?php echo $table_row['sort'];?>" class="page_order" ></label></td>
                                <td>
                                    <a href="admin.php?w=pp&amp;d=dl&amp;id=<?php echo $table_row['id'];?>"><span class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i> <?php echo $gsprache->del;?></span></a>
                                    <a href="admin.php?w=pp&amp;d=md&amp;id=<?php echo $table_row['id'];?>"><span class="btn btn-primary btn-sm"><i class="fa fa-pencil-square-o"></i> <?php echo $gsprache->mod;?></span></a>
                                </td>
                            </tr>
                            <?php } ?>
                            </tbody>
                            <tfoot>
                            <tr>
                                <th><?php echo $sprache->title;?></th>
                                <th>ID</a></th>
                                <th><?php echo $sprache->languages;?></th>
                                <th><?php echo $sprache->released;?></th>
                                <th><?php echo $sprache->author;?></th>
                                <th><?php echo $sprache->date;?></th>
                                <th><?php echo $sprache->sort;?></th>
                                <th><?php echo $gsprache->action;?></th>
                            </tr>
                            </tfoot>
                        </table>

                        <div class="control-group">
                            <label class="control-label" for="inputEdit"></label>
                            <div class="controls">
                                <button class="btn btn-primary" id="inputEdit" type="submit"><i class="fa fa-save"></i> <?php echo $gsprache->save;?></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
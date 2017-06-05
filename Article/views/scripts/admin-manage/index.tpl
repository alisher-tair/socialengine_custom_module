<script type="text/javascript">
    function multiDelete()
    {
        return confirm("<?php echo $this->translate('Are you sure you want to delete the selected articles?'); ?>")
    }

    function selectAll()
    {
        var i;
        var multidelete_form = $('multidelete_form');
        var inputs = multidelete_form.elements;
        for (i = 1; i < inputs.length; i++) {
            if (!inputs[i].disabled) {
                inputs[i].checked = inputs[0].checked;
            }
        }
    }
</script>

<h2>
    <?php echo $this->translate('Articles Plugin') ?>
</h2>

<?php if (count($this->navigation)): ?>
    <div class="tabs">
        <?php
        // Render the menu
        // ->setUiClass()
        echo $this->navigation()->menu()->setContainer($this->navigation)->render();
        ?>
    </div>
<?php endif; ?>

<br />

<?php if ($this->paginator->getTotalItemCount() > 0): ?>
    <form action="<?php echo $this->url(); ?>" id="multidelete_form" method="post" onSubmit="return multiDelete()">
        <table class="admin_table">
            <thead>
                <tr>
                    <th class="admin_table_short"><input type="checkbox" class="checkbox" onclick="selectAll();"></th>
                    <th class="admin_table_short">ID</th>
                    <th><?php echo $this->translate("Title") ?></th>
                    <th><?php echo $this->translate("Owner") ?></th>
                    <th><?php echo $this->translate("Views") ?></th>
                    <th><?php echo $this->translate("Date") ?></th>
                    <th><?php echo $this->translate("Options") ?></th>
                    </tr>
            </thead>
            <tbody>
            <?php foreach ($this->paginator as $item): ?>
                <tr>
                    <td><input type="checkbox" class="checkbox" name="delete_<?php echo $item->getIdentity(); ?>" value="<?php echo $item->getIdentity(); ?>"></td>
                    <td><?php echo $item->getIdentity(); ?></td>
                    <td><?php echo $item->getTitle() ?></td>
                    <td><?php echo $item->getOwner(); ?></td>
                    <td><?php echo $this->locale()->toNumber($item->views); ?></td>
                    <td><?php echo $this->locale()->toDateTime($item->creation_date); ?></td>
                    <td>
                        <?php echo $this->htmlLink('articles/'.$item->getIdentity(), $this->translate('view')); ?>

                        <?php echo $this->htmlLink(
                            array('route' => 'default', 'module' => 'article', 'controller' => 'admin-manage', 'action' => 'delete', 'id' => $item->article_id),
                            $this->translate("delete"),
                            array('class' => 'smoothbox')) ?>
                    </td>
                </tr>
            <?php endforeach; ?>
            </tbody>
        </table>

        <br>

        <div class="buttons">
            <button type="submit"><?php echo $this->translate("Delete Selected"); ?></button>
        </div>
    </form>
    <br>

    <div>
        <?php echo $this->paginationControl($this->paginator); ?>
    </div>

<?php else: ?>
    <div class="tip">
        <span>
            <?php echo $this->translate("There are no articles by your members yet."); ?>
        </span>
    </div>
<?php endif; ?>

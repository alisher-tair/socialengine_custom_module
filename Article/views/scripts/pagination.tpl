<?php
/**
 * SocialEngine
 *
 * @category   Application_Extensions
 * @package    Hebadge
 * @copyright  Copyright Hire-Experts LLC
 * @license    http://www.hire-experts.com
 * @version    $Id: pagination.tpl 02.04.12 09:12 michael $
 * @author     Michael
 */
?>

<?php
// Parse query and remove page
if( !empty($this->query) && ( is_string($this->query) || is_array($this->query)) ) {
    $query = $this->query;
    if( is_string($query) ) $query = parse_str(trim($query, '?'));
    unset($query['page']);
    $query = http_build_query($query);
    if( $query ) $query = '?' . $query;
} else {
    $query = '';
}
// Add params
$params = ( !empty($this->params) && is_array($this->params) ? $this->params : array() );
unset($params['page']);
?>


<?php if( $this->pageCount > 1 ): ?>

    <div class="hebadge_pagination">

        <div class="pages">
            <ul class="paginationControl">
                <?php if( isset($this->previous) ): ?>
                    <li>
                        <?php echo $this->htmlLink(array_merge($params, array(
                            'reset' => false,
                            'page' => ( $this->pageAsQuery ? null : $this->previous ),
                            'QUERY' => $query . ( $this->pageAsQuery ? '&page=' . $this->previous : '' ),
                        )), $this->translate('Previous'), array('onclick' => "Hebadge.requestHTML('".$this->ajax_url."', null, $$('.".$this->ajax_class."')[0], {'page': ".$this->previous."});$(this).getParent('.hebadge_pagination').getElement('.hebadge_pagination_loader').addClass('active');return false;")) ?>
                    </li>
                <?php endif; ?>

                <?php if (isset($this->next)): ?>
                    <li>
                        <?php echo $this->htmlLink(array_merge($params, array(
                            'reset' => false,
                            'page' => ( $this->pageAsQuery ? null : $this->next ),
                            'QUERY' => $query . ( $this->pageAsQuery ? '&page=' . $this->next : '' ),
                        )), $this->translate('Next'), array('onclick' => "Hebadge.requestHTML('".$this->ajax_url."', null, $$('.".$this->ajax_class."')[0], {'page': ".$this->next."});$(this).getParent('.hebadge_pagination').getElement('.hebadge_pagination_loader').addClass('active');return false;")) ?>
                    </li>
                <?php endif; ?>
            </ul>

            <div class="hebadge_pagination_loader"></div>

        </div>

    </div>

<?php endif; ?>


{capture name="advanced_options_`$obj_id`"}

<div class="ty-reward-group {if !$product.product_condition_value} hidden{/if}">
    <span class="ty-control-group__label product-list-field">{__("product_condition")}:</span>
    <span class="ty-control-group__item"><bdi>{$product.product_condition_value}</bdi></span>
</div>

{assign var="condition_field_for_product_smarty_ao" value="advanced_options_`$obj_id`"}
{$smarty.capture.$condition_field_for_product_smarty_ao nofilter}
{/capture}

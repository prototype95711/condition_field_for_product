{include file="common/subheader.tpl" title=__("condition_field_product") target="#condition_field_for_product_settings"}
<div id="condition_field_for_product_settings" class="in collapse">
    <div class="control-group cm-no-hide-input">
        <label for="product_condition_value" class="control-label">{__("product_condition")}:</label>
        <div class="controls">
            <select name="product_data[product_condition_value]" id="product_condition_value">
                {foreach from=$product_condition_values_arr key=pcvak item=pcva}
                    <option value="{$pcvak}" {if $product_data.product_condition_value == $pcvak}selected="selected"{/if}>{$pcva}</option>
                {/foreach}
            </select>
        </div>
    </div>
</div>

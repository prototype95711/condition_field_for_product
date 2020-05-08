{include file="common/subheader.tpl" title=__("condition_field_product") target="#condition_field_for_product_settings"}
<div id="condition_field_for_product_settings" class="in collapse">
    <div class="control-group cm-no-hide-input">
        <label for="product_condition_value" class="control-label">{__("product_condition")}:</label>
        <div class="controls">
            <select name="product_data[product_condition_value]" id="product_condition_value">
                <option value="destroyed" {if $product_data.product_condition_value == "destroyed"}selected="selected"{/if}>destroyed</option>
                <option value="poor" {if $product_data.product_condition_value == "poor"}selected="selected"{/if}>poor</option>
                <option value="good" {if $product_data.product_condition_value == "good"}selected="selected"{/if}>good</option>
                <option value="average" {if $product_data.product_condition_value == "average"}selected="selected"{/if}>average</option>
                <option value="excellent" {if $product_data.product_condition_value == "excellent"}selected="selected"{/if}>excellent</option>
            </select>
        </div>
    </div>
</div>

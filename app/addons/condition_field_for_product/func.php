<?php
/***************************************************************************
*                                                                          *
*   (c) 2004 Vladimir V. Kalynyak, Alexey V. Vinokurov, Ilya M. Shalnev    *
*                                                                          *
* This  is  commercial  software,  only  users  who have purchased a valid *
* license  and  accept  to the terms of the  License Agreement can install *
* and use this program.                                                    *
*                                                                          *
****************************************************************************
* PLEASE READ THE FULL TEXT  OF THE SOFTWARE  LICENSE   AGREEMENT  IN  THE *
* "copyright.txt" FILE PROVIDED WITH THIS DISTRIBUTION PACKAGE.            *
****************************************************************************/

use Tygh\Registry;

if (!defined('BOOTSTRAP')) { die('Access denied'); }

function fn_condition_field_for_product_get_product_data(&$product_id, &$field_list, &$join, &$auth)
{
    $field_list .= ", ?:products_conditions.product_condition_value as product_condition_value";
    $join .= db_quote(" LEFT JOIN ?:products_conditions ON ?:products_conditions.product_id = ?:products.product_id");
}

function fn_condition_field_for_product_update_product_post(&$product_data, &$product_id)
{
    if (!isset($product_data['product_condition_value'])) {
        return false;
    }

    db_query("DELETE FROM ?:products_conditions WHERE product_id = ?i", $product_id);

    $_data = array (
        'product_id' => $product_id,
        'product_condition_value' => $product_data['product_condition_value']
    );

    db_query("REPLACE INTO ?:products_conditions ?e", $_data);

    return true;
}

function fn_condition_field_for_product_delete_product_post(&$product_id)
{
    db_query("DELETE FROM ?:products_conditions WHERE product_id = ?i", $product_id);

    return true;
}

<?php

/**
 * By MahmoudAp
 * Github: https://github.com/mahmoud-ap
 */

namespace App\Controllers;

class Pages extends BaseController
{

    public function __construct()
    {

        parent::__construct($this);
    }


    public function filtering($request, $response, $args)
    {
        $this->data["activeMenu"]     = "filtering";

        $viewData = [];
        $viewData["pageTitle"]      = "وضعیت فیلترینگ";
        $viewData["viewContent"]    = "pages/filtering.php";
        $viewData["activePage"]     = "filtering";
        $this->render($viewData);
    }



    public function ajaxFilteringDate($request, $response, $args)
    {
        $data = getFilteringData();
        if (!empty($data)) {
            return $response->withStatus(200)->withJson($data);
        }
        
        return $response->withStatus(400);
    }
}

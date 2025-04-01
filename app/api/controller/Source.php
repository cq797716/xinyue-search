<?php


namespace app\api\controller;

use think\App;
use app\api\QfShop;
use think\facade\Cache;
use Carbon\Carbon;
use quarkPlugin\QuarkPlugin;
use app\model\SourceCategory as SourceCategoryModel;

class Source extends QfShop
{   
    public function __construct(App $app)
    {
        parent::__construct($app);
    }
    public function day()
    {
      
        
        $SourceCategoryModel = new SourceCategoryModel();
        $map[] = ['is_update', '=', 1];
        $data = $SourceCategoryModel->where($map)->column('source_category_id');
        $ids = implode(',', $data);

        $quarkPlugin = new QuarkPlugin();
        $quarkPlugin->transferAll($ids,2);
        return jok('已提交任务，稍后查看结果');
    }
}

<?php
namespace App\Views\Composers;

use Illuminate\View\View;
use App\Category;

class NavCatComposer
{
    public function compose(View $view)
    {
        $this->composeCategories($view);
    }

    private function composeCategories(View $view)
    {
        $categories = Category::with(['posts' => function($query) {
            $query->published();
        }])->orderBy('id', 'desc')->get();

        $view->with('categories', $categories);
    }

}

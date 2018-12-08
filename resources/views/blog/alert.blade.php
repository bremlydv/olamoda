@if (isset($categoryName))
    <div class="alert alert-secondary">
        <h6 class="text-center" style="font-size: 22px;">Category: <strong>{{ $categoryName }}</strong></h6>
    </div>
@endif

@if (isset($tagName))
    <div class="alert alert-secondary">
        <h6 class="text-center" style="font-size: 22px;">Tagged: <strong>{{ $tagName }}</strong></h6>
    </div>
@endif

@if (isset($authorName))
    <div class="alert alert-secondary">
        <h6 class="text-center" style="font-size: 22px;">Author: <strong>{{ $authorName }}</strong></h6>
    </div>
@endif

@if ($term = request('term'))
    <div class="alert alert-secondary">
        <h6 class="text-center" style="font-size: 22px;">Search Results for: <strong>{{ $term }}</strong></h6>
    </div>
@endif

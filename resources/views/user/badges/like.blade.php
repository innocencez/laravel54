@if(\Auth::id() != $target_user->id)
    @if(\Auth::user()->hasStar($target_user->id))
    <div>
        <button class="btn btn-default like-button" like-value="1" like-user="{{ $target_user->id }}" type="button">取消关注</button>
    </div>
    @else
    <div>
        <button class="btn btn-default like-button" like-value="0" like-user="{{ $target_user->id }}" type="button">关注</button>
    </div>
    @endif
@endif
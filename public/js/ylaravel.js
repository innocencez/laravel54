$.ajaxSetup({
    headers : {
        'X-CSRF-TOKEN' : $('meta[name="csrf-token"]').attr('content')
    }
});
var editor = new wangEditor('content');
if(editor.config){
    editor.config.uploadImgUrl = '/posts/image/upload';
    // 设置 headers（举例）
    editor.config.uploadHeaders = {
        'X-CSRF-TOKEN' : $('meta[name="csrf-token"]').attr('content')
    };
    editor.create();
}
//个人设置头像显示
$('.preview_input').change(function(event){
    var file = event.currentTarget.files[0];
    var url = window.URL.createObjectURL(file);
    $(event.target).next('.preview_img').attr("src",url);
});
//关注与取消关注ajax
$('.like-button').click(function (event) {
    var target = $(event.target);
    var user_id = target.attr('like-user');
    if(target.attr('like-value') == 1){
        //取消关注
        $.ajax({
            url : '/user/' + user_id + '/unFan',
            method : 'POST',
            dataType : 'json',
            success : function (data) {
                if(data.error != 0){
                    alert(data.msg);
                    return;
                }
                target.attr('like-value',0);
                target.text('关注');
            }
        });
    }else{
        //关注
        $.ajax({
            url : '/user/' + user_id + '/fan',
            method : 'POST',
            dataType : 'json',
            success : function (data) {
                if(data.error != 0){
                    alert(data.msg);
                    return;
                }
                target.attr('like-value',1);
                target.text('取消关注');
            }
        });
    }
});
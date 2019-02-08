jQuery(document).ready(function($) {
	$('body').append(navigator.userAgent.toLowerCase())	
	webkit.messageHandlers.callbackHandler.postMessage("jsからこんにちは");

	$('body').on('touchend',function(){
		webkit.messageHandlers.appendText.postMessage("文字列追加");			
	})
	
});

function test(val) {
    // テスト用に id タイトルを変更
    $('body').append(val)
}
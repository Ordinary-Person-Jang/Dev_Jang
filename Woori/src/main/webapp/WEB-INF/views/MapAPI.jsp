
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=10ff07206c2eb1ab4c69aca082bc7a8e&libraries=services"></script>
<meta charset="EUC-KR">
<title>intro</title>
<style>
 img{
 	width: 100px;
 	height: 100px;
 }
</style>
</head>
<body>
<%-- 	<%= request.getAttribute("result")%> --%>
	<input type="button" onclick="findLocation()" value="위치찾기">
    <input type="text"  id="location" name="location" value="현재주소를넣어주세요"  readonly="readonly">
    <p id="myLocation"></p>
     <!-- 버튼누르면 자동입력될 텍스트 -->
	<script>
	var loc = document.getElementById("myLocation");
		function findLocation() {
			if (navigator.geolocation) {
				navigator.geolocation.getCurrentPosition(showYourLocation);
			} else { 
				loc.innerHTML = "이 문장은 사용자의 웹 브라우저가 Geolocation API를 지원하지 않을 때 나타납니다!";
			}
		}

		function showYourLocation(position) {
			var lat =  position.coords.latitude;
			var lon =  position.coords.longitude;
			console.log(lat);
			console.log(lon);
			var content = "";
			var geocoder = new kakao.maps.services.Geocoder();
			var coord = new kakao.maps.LatLng(lat, lon);
			var callback = function(result, status) {
			   
				if (status === kakao.maps.services.Status.OK) {
			    	content =  result[0].address.address_name;
			    	console.log(lat);
					console.log(lon);
					console.log(content);
					var array = content.split(" ");
					document.getElementById('location').setAttribute('value',array[0]+' '+array[1]);
					/* array 추가로 원래주소 늘리기 줄이기 */
			    }
			};
			geocoder.coord2Address(coord.getLng(), coord.getLat(), callback);
		}
	</script> 
 
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
* {
	font-family: 'Roboto', sans-serif;
}

@
keyframes click-wave { 0% {
	height: 40px;
	width: 40px;
	opacity: 0.35;
	position: relative;
}

100%
{
height
:
 
200
px
;

    
width
:
 
200
px
;

    
margin-left
:
 
-80
px
;

    
margin-top
:
 
-80
px
;

    
opacity
:
 
0;
}
}
.option-input {
	-webkit-appearance: none;
	-moz-appearance: none;
	-ms-appearance: none;
	-o-appearance: none;
	appearance: none;
	position: relative;
	top: 13.33333px;
	right: 0;
	bottom: 0;
	left: 0;
	height: 30px;
	width: 30px;
	transition: all 0.15s ease-out 0s;
	background: #cbd1d8;
	border: none;
	color: #fff;
	cursor: pointer;
	display: inline-block;
	margin-right: 0.5rem;
	outline: none;
	position: relative;
	z-index: 1000;
}

.option-input:hover {
	background: #9faab7;
}

.option-input:checked {
	background: #40e0d0;
}

.option-input:checked::before {
	height: 40px;
	width: 40px;
	position: absolute;
	content: '✔';
	display: inline-block;
	font-size: 26.66667px;
	text-align: center;
	line-height: 40px;
}

.option-input:checked::after {
	-webkit-animation: click-wave 0.65s;
	-moz-animation: click-wave 0.65s;
	animation: click-wave 0.65s;
	background: #40e0d0;
	content: '';
	display: block;
	position: relative;
	z-index: 100;
}

body {
	background: #e8ebee;
	color: #9faab7;
	font-family: "Helvetica Neue", "Helvetica", "Roboto", "Arial",
		sans-serif;
	text-align: center;
}

body label {
	display: block;
	line-height: 40px;
}

input[type="submit"], input[type="reset"] {
	border: solid 1px #ccc;
	padding: 0.4em 0.7em;
	color: #9faab7;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	-ms-border-radius: 5px;
	-o-border-radius: 5px;
	border-radius: 5px;
	/*To make the state change a little real*/
	-webkit-transition: background-color 200ms linear;
	/*Safari and Chrome*/
	-moz-transition: background-color 200ms linear; /*Firefox*/
	-o-transition: background-color 200ms linear; /*opera*/
	-ms-transition: background-color 200ms linear;
	transition: all 200ms linear;
	background-color: #e8ebee;
	cursor: pointer;
	text-align: center;
}

input[type="submit"]:hover, input[type="reset"]:hover, .button:hover {
	background: #9faab7;
	color: white;
}

input[type="submit"]:active, input[type="reset"]:active, .button:active
	{
	background: #40e0d0;
	color: white;
}
</style>
</head>
<body>

	<form action="checkbox_result.jsp" method=post class="form">
		<h3>관심있는 악세사리 선택하세요.</h3>
		<div>
			<label> <input type="checkbox" class="option-input checkbox"
				name="product" value="모자" /> 모자
			</label> <label> <input type="checkbox" class="option-input checkbox"
				name="product" value="가방" /> 가방
			</label> <label> <input type="checkbox" class="option-input checkbox"
				name="product" value="신발" /> 신발
			</label>
			<label> <input type="checkbox" class="option-input checkbox"
				name="product" value="벨트" /> 벨트
			</label>
			<label> <input type="checkbox" class="option-input checkbox"
				name="product" value="지갑" /> 지갑
			</label>
			<label> <input type="checkbox" class="option-input checkbox"
				name="product" value="반지" /> 반지
			</label>
		</div>
		<br> <br>
		<div>
			<input type="submit" value="check"> &nbsp;&nbsp; <input
				type="reset" value="cancel">
		</div>
	</form>

</body>
</html>
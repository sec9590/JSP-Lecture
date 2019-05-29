<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.switch-field {
	display: flex;
	margin-bottom: 36px;
	overflow: hidden;
}

.switch-field input {
	position: absolute !important;
	clip: rect(0, 0, 0, 0);
	height: 1px;
	width: 1px;
	border: 0;
	overflow: hidden;
}

.switch-field label {
	background-color: #e4e4e4;
	color: rgba(0, 0, 0, 0.6);
	font-size: 14px;
	line-height: 1;
	text-align: center;
	padding: 8px 16px;
	margin-right: -1px;
	border: 1px solid rgba(0, 0, 0, 0.2);
	box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.3), 0 1px
		rgba(255, 255, 255, 0.1);
	transition: all 0.1s ease-in-out;
}

.switch-field label:hover {
	cursor: pointer;
}

.switch-field input:checked+label {
	background-color: #a5dc86;
	box-shadow: none;
}

.switch-field label:first-of-type {
	border-radius: 4px 0 0 4px;
}

.switch-field label:last-of-type {
	border-radius: 0 4px 4px 0;
}

/* This is just for CodePen. */
.form {
	max-width: 600px;
	font-family: "Lucida Grande", Tahoma, Verdana, sans-serif;
	font-weight: normal;
	line-height: 1.625;
	margin-left: 300 padding: 16px;
}

h4 {
	font-size: 18px;
	margin-bottom: 8px;
}

input[type=text] {
	width: 50;
	border: 2px solid #aaa;
	border-radius: 4px;
	outline: none;
	padding: 8px;
	box-sizing: border-box;
	transition: .3s;
}

input[type=text]:focus {
	border-color: #a5dc86;
	box-shadow: 0 0 8px 0 #a5dc86;
}

input[type="submit"], input[type="reset"] {
	border: solid 1px #ccc;
	padding: 0.4em 0.7em;
	color: #a5dc86;
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
	background-color: white;
	cursor: pointer;
	text-align: center;
}

input[type="submit"]:hover, input[type="reset"]:hover, .button:hover {
	background: #a5dc86;
	color:white;
}

input[type="submit"]:active, input[type="reset"]:active, .button:active
	{
	background:#a5dc86;
	color:white;
}
</style>
</head>
<body>
	<h2>설문조사</h2>
	<hr />
	<form action="test_result.jsp" method=post class="form">
		<div>
			<h4>이름</h4>
			<input type="text" placeholder="Your name" name="name">
		</div>
		<h4>성별</h4>
		<div class="switch-field">
			<input type="radio" id="radio-one" name="gender" value="남자" /> <label
				for="radio-one">남자</label> <input type="radio" id="radio-two"
				name="gender" value="여자" /> <label for="radio-two">여자</label>
		</div>

		<h4>좋아하는 계절</h4>
		<div class="regular-field">
			<input type="checkbox" name="favorite" value="봄">&nbsp;봄&nbsp;&nbsp;</input>
			<input type="checkbox" name="favorite" value="여름">&nbsp;여름&nbsp;&nbsp;</input>
			<input type="checkbox" name="favorite" value="가을">&nbsp;가을&nbsp;&nbsp;</input>
			<input type="checkbox" name="favorite" value="겨울">&nbsp;겨울&nbsp;&nbsp;</input>
		</div>
		<br>
		<div style="margin-left:50px">
		<input type="submit" value="check">
		<input type="reset"	value="cancel">
		</div>

	</form>
	<br />
	<hr />
	<br />

</body>
</html>
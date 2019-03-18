<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<title>学生信息管理系统</title>
<script src="${basepath}js/jquery.min.js"></script>
<script src="${basepath}js/bootstrap.min.js"></script>
<script>
	$(function() {
		$('.meun-item').click(function() {
			$('.meun-item').removeClass('meun-item-active');
			$(this).addClass('meun-item-active');
			var itmeObj = $('.meun-item').find('img');
			itmeObj.each(function() {
				var items = $(this).attr('src');
				items = items.replace('_grey.png', '.png');
				items = items.replace('.png', '_grey.png');
				$(this).attr('src', items);
			});
			var attrObj = $(this).find('img').attr('src');
			;
			attrObj = attrObj.replace('_grey.png', '.png');
			$(this).find('img').attr('src', attrObj);
		});
		$('#topAD').click(function() {
			$('#topA').toggleClass(' glyphicon-triangle-right');
			$('#topA').toggleClass(' glyphicon-triangle-bottom');
		});
		$('#topBD').click(function() {
			$('#topB').toggleClass(' glyphicon-triangle-right');
			$('#topB').toggleClass(' glyphicon-triangle-bottom');
		});
		$('#topCD').click(function() {
			$('#topC').toggleClass(' glyphicon-triangle-right');
			$('#topC').toggleClass(' glyphicon-triangle-bottom');
		});
		$('.toggle-btn').click(function() {
			$('#leftMeun').toggleClass('show');
			$('#rightContent').toggleClass('pd0px');
		});
	});
</script>
<!--[if lt IE 9]>
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
<link href="${basepath}css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${basepath}css/common.css" />
<link rel="stylesheet" type="text/css" href="${basepath}css/slide.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath}css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath}css/flat-ui.min.css" />
<link rel="stylesheet" type="text/css"
	href="${basepath}css/jquery.nouislider.css">
</head>
<body>
	<%-- <% List<Student> student=(List<Student>)request.getAttribute("stu"); %> --%>
	<div id="wrap">
		<!-- 左侧菜单栏目块 -->
		<div class="leftMeun" id="leftMeun">
			<div id="logoDiv">
				<p id="logoP">学生信息管理系统</p>
			</div>
			<div id="personInfor">
				<p id="userName">管理员,您好！</p>
				<p>欢迎您！</p>
			</div>
			<div class="meun-title">信息管理</div>
			<div class="meun-item meun-item-active" href="#studentModel"
				aria-controls="aria-controls" role="tab" data-toggle="tab"
				id="stutitle">
				<img src="${basepath}images/icon_source.png">学生信息
			</div>
			<div class="meun-item" href="#scoreModel" aria-controls="scoreModel"
				role="tab" data-toggle="tab" id="scoretitle">
				<img src="${basepath}images/icon_card_grey.png">成绩管理
			</div>
			<div class="meun-item" href="#classModel" aria-controls="classModel"
				role="tab" data-toggle="tab" id="classtitle">
				<img src="${basepath}images/icon_card_grey.png">课程信息
			</div>
		</div>
		<!-- 右侧具体内容栏目 -->
		<div id="rightContent">
			<a class="toggle-btn" id="nimei"> <i
				class="glyphicon glyphicon-align-justify"></i>
			</a>
			<!-- Tab panes -->
			<div class="tab-content">

				<!-- 学生管理模块 -->
				<div role="tabpanel" class="tab-pane active" id="studentModel">
					<div class="check-div form-inline">
						<button class="btn btn-yellow btn-xs" data-toggle="modal"
							data-target="#addStu">添加信息</button>
					</div>
					<div class="data-div">
						<div class="row tableHeader">
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">学号</div>
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">姓名</div>
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">性别</div>
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">专业</div>
							<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">年级</div>
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">操作</div>
						</div>
						<div class="tablebody" id="studentbody"></div>
					</div>
					<!--弹出窗口 添加学生信息-->
					<div class="modal fade" id="addStu" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">添加信息</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<form class="form-horizontal">
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">学号：</label>
												<div class="col-xs-8 ">
													<input type="text" class="form-control input-sm duiqi"
														id="SNo" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sLink" class="col-xs-3 control-label">姓名：</label>
												<div class="col-xs-8 ">
													<input type="text" class="form-control input-sm duiqi"
														id="SN" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sOrd" class="col-xs-3 control-label">性别：</label>
												<div class="col-xs-8">
													<input type="text" class="form-control input-sm duiqi"
														id="Sex" placeholder="" />
												</div>
											</div>
											<div class="form-group">
												<label for="sKnot" class="col-xs-3 control-label">专业：</label>
												<div class="col-xs-8">
													<input type="text" class="form-control input-sm duiqi"
														id="Major" placeholder="" />
												</div>
											</div>
											<div class="form-group">
												<label for="sKnot" class="col-xs-3 control-label">年级：</label>
												<div class="col-xs-8">
													<input type="text" class="form-control input-sm duiqi"
														id="Grade" placeholder="" />
												</div>
											</div>
									</div>
									</form>
									<div class="modal-footer">
										<button type="button" class="btn btn-xs btn-white"
											data-dismiss="modal">取 消</button>
										<button type="button" class="btn btn-xs btn-green" id="stuIn">保
											存</button>
									</div>
								</div>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!--修改学生信息弹出窗口-->
					<div class="modal fade" id="changeStu" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">修改信息</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<form class="form-horizontal">
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">学号：</label>
												<div class="col-xs-8 ">
													<input type="text" class="form-control input-sm duiqi"
														id="SNo1" placeholder="" readonly="readonly">
												</div>
											</div>
											<div class="form-group">
												<label for="sLink" class="col-xs-3 control-label">姓名：</label>
												<div class="col-xs-8 ">
													<input type="text" class="form-control input-sm duiqi"
														id="SN1" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sOrd" class="col-xs-3 control-label">性别：</label>
												<div class="col-xs-8">
													<input type="text" class="form-control input-sm duiqi"
														id="Sex1" placeholder="" />
												</div>
											</div>
											<div class="form-group">
												<label for="sKnot" class="col-xs-3 control-label">专业：</label>
												<div class="col-xs-8">
													<input type="text" class="form-control input-sm duiqi"
														id="Major1" placeholder="" />
												</div>
											</div>
											<div class="form-group">
												<label for="sKnot" class="col-xs-3 control-label">年级：</label>
												<div class="col-xs-8">
													<input type="text" class="form-control input-sm duiqi"
														id="Grade1" placeholder="" />
												</div>
											</div>
									</div>
									</form>
									<div class="modal-footer">
										<button type="button" class="btn btn-xs btn-white"
											data-dismiss="modal">取 消</button>
										<button type="button" class="btn btn-xs btn-green"
											id="stuChange">保 存</button>
									</div>
								</div>
							</div>

						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal -->
					<!--弹出删除学生警告窗口-->
					<div class="modal fade" id="deleteStu" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">确定要删除？删除后不可恢复！</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-xs btn-danger"
										id="stuDelete">确 定</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->
				</div>
				<!-- 学生管理END -->

				<!--成绩管理模块-->
				<div role="tabpanel" class="tab-pane" id="scoreModel">
					<div class="check-div form-inline">
						<button class="btn btn-yellow btn-xs" data-toggle="modal"
							data-target="#addScore">添加成绩</button>
					</div>
					<div class="data-div">
						<div class="row tableHeader">
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">学号</div>
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">课程编号</div>
							<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">课程名</div>
							<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">分数</div>
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">操作</div>
						</div>
						<div class="tablebody" id="scorebody"></div>
						<!--弹出窗口 添加成绩-->
						<div class="modal fade" id="addScore" role="dialog"
							aria-labelledby="gridSystemModalLabel">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class="modal-title">添加信息</h4>
									</div>
									<div class="modal-body">
										<div class="container-fluid">
											<form class="form-horizontal">
												<div class="form-group ">
													<label class="col-xs-3 control-label">学生编号：</label>
													<div class="col-xs-8 ">
														<input type="text" class="form-control input-sm duiqi"
															placeholder="" id="addssno">
													</div>
												</div>
												<div class="form-group">
													<label class="col-xs-3 control-label">课程编号：</label>
													<div class="col-xs-8 ">
														<input type="text" class="form-control input-sm duiqi"
															placeholder="" id="addscno">
													</div>
												</div>
												<div class="form-group">
													<label class="col-xs-3 control-label">课程名称：</label>
													<div class="col-xs-8">
														<input type="text" class="form-control input-sm duiqi"
															placeholder="" id="addscn">
													</div>
												</div>
												<div class="form-group">
													<label class="col-xs-3 control-label">分数：</label>
													<div class="col-xs-8">
														<input type="text" class="form-control input-sm duiqi"
															placeholder="" id="addsscore">
													</div>
												</div>
											</form>
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-xs btn-xs btn-white"
											data-dismiss="modal">取 消</button>
										<button type="button" class="btn btn-xs btn-xs btn-green"
											id="addscore">保 存</button>
									</div>
								</div>
								<!-- /.modal-content -->
							</div>
							<!-- /.modal-dialog -->
						</div>
						<!-- /.modal -->
						<!--修改成绩弹出窗口-->
						<div class="modal fade" id="changeScore" role="dialog"
							aria-labelledby="gridSystemModalLabel">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class="modal-title">修改信息</h4>
									</div>
									<div class="modal-body">
										<div class="container-fluid">
											<form class="form-horizontal">
												<div class="form-group ">
													<label class="col-xs-3 control-label">学生编号：</label>
													<div class="col-xs-8 ">
														<input type="text" class="form-control input-sm duiqi"
															placeholder="" readonly="readonly" id="updatessno">
													</div>
												</div>
												<div class="form-group">
													<label class="col-xs-3 control-label">课程编号：</label>
													<div class="col-xs-8 ">
														<input type="text" class="form-control input-sm duiqi"
															placeholder="" readonly="readonly" id="updatescno">
													</div>
												</div>
												<div class="form-group">
													<label class="col-xs-3 control-label">课程名称：</label>
													<div class="col-xs-8">
														<input type="text" class="form-control input-sm duiqi"
															placeholder="" readonly="readonly" id="updatescn">
													</div>
												</div>
												<div class="form-group">
													<label class="col-xs-3 control-label">分数：</label>
													<div class="col-xs-8">
														<input type="text" class="form-control input-sm duiqi"
															placeholder="" id="updatesscore">
													</div>
												</div>
											</form>
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-xs btn-white"
											data-dismiss="modal">取 消</button>
										<button type="button" class="btn btn-xs btn-green"
											id="updatescore">保 存</button>
									</div>
								</div>
								<!-- /.modal-content -->
							</div>
							<!-- /.modal-dialog -->
						</div>
						<!-- /.modal -->
						<!--弹出删除成绩警告窗口-->
						<div class="modal fade" id="deleteScore" role="dialog"
							aria-labelledby="gridSystemModalLabel">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
									</div>
									<div class="modal-body">
										<div class="container-fluid">确定要删除？删除后不可恢复！</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-xs btn-white"
											data-dismiss="modal">取 消</button>
										<button type="button" class="btn btn-xs btn-danger"
											id="deletescore">确 定</button>
									</div>
								</div>
								<!-- /.modal-content -->
							</div>
							<!-- /.modal-dialog -->
						</div>
						<!-- /.modal -->
					</div>
				</div>
				<!-- 成绩管理END -->

				<!--课程管理模块-->
				<div role="tabpanel" class="tab-pane" id="classModel">
					<div class="check-div form-inline">
						<button class="btn btn-yellow btn-xs" data-toggle="modal"
							data-target="#addClass">添加课程</button>
					</div>
					<div class="data-div">
						<div class="row tableHeader">
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">课程编号</div>
							<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">课程名称</div>
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">任课老师</div>
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">操作</div>
						</div>
						<div class="tablebody" id="classbody">
							<!-- 内容 -->
						</div>
					</div>
					<!--弹出窗口 添加课程-->
					<div class="modal fade" id="addClass" role="dialog">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title">添加课程</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<form class="form-horizontal">
											<div class="form-group">
												<label class="col-xs-3 control-label">课程编号：</label>
												<div class="col-xs-8">
													<input type="text" class="form-control input-sm duiqi"
														id="addccno" placeholder="">
												</div>
											</div>
											<div class="form-group ">
												<label class="col-xs-3 control-label">课程名称：</label>
												<div class="col-xs-8 ">
													<input type="text" class="form-control input-sm duiqi"
														id="addccn" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label class="col-xs-3 control-label">任课老师：</label>
												<div class="col-xs-8 ">
													<input type="text" class="form-control input-sm duiqi"
														id="addcteacher" placeholder="">
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-xs btn-xs btn-green"
										id="addclass">保 存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

					<!--修改课程弹出窗口-->
					<div class="modal fade" id="changeClass" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title">修改信息</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<form class="form-horizontal">
											<div class="form-group">
												<label class="col-xs-3 control-label">课程编号：</label>
												<div class="col-xs-8">
													<input type="text" class="form-control input-sm duiqi"
														id="changeccno" placeholder="" readonly="readonly">
												</div>
											</div>
											<div class="form-group ">
												<label class="col-xs-3 control-label">课程名称：</label>
												<div class="col-xs-8 ">
													<input type="text" class="form-control input-sm duiqi"
														id="changeccn" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label class="col-xs-3 control-label">任课老师：</label>
												<div class="col-xs-8 ">
													<input type="text" class="form-control input-sm duiqi"
														id="changecteacher" placeholder="">
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-xs btn-green"
										id="updateclass">保 存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

					<!--弹出删除课程警告窗口-->
					<div class="modal fade" id="deleteClass" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">确定要删除？删除后不可恢复！</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-xs btn-danger"
										id="deleteclass">确 定</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->
				</div>
				<!-- 课程管理END -->

			</div>


		</div>
	</div>
	<!--  -->

	<script src="${basepath}js/jquery.nouislider.js"></script>

	<!-- this page specific inline scripts -->

	<script>
		//动态添加学生表信息
		var list = JSON.parse('${list}');
		var stu = list[0];
		var cl = list[1];
		var score = list[2];
		var html;
		$().ready(stuinfo());
		$().ready(classinfo());
		$().ready(scoreinfo());
		function stuinfo() {
			var cname = 'sc';//button id前缀
			var dname = 'sd';
			$
					.each(
							stu,
							function(i, s) {

								html = '<div class="row"><div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">'
										+ s.sno
										+ '</div><div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">'
										+ s.sn
										+ '</div><div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">'
										+ s.sex
										+ '</div><div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">'
										+ s.major
										+ '</div><div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">'
										+ s.grade
										+ '</div><div class="col-lg-2 col-md-2 col-sm-2 col-xs-2"><button class="btn btn-success btn-xs" id="'+cname+i+'" data-toggle="modal" data-target="#changeStu">修改</button><button class="btn btn-danger btn-xs" data-toggle="modal" id="'+dname+i+'" data-target="#deleteStu">删除</button></div></div>';

								$("#studentbody").append(html);

							});
		}
		function classinfo() {
			//动态添加课程表
			var ccname = 'cc';//button id前缀
			var cdname = 'cd';

			$
					.each(
							cl,
							function(i, c) {

								html = '<div class="row"><div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">'
										+ c.cno
										+ '</div><div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">'
										+ c.cn
										+ '</div><div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">'
										+ c.teacher
										+ '</div><div class="col-lg-2 col-md-2 col-sm-2 col-xs-2"><button class="btn btn-success btn-xs" id="'+ccname+i+'" data-toggle="modal" data-target="#changeClass">修改</button><button class="btn btn-danger btn-xs" data-toggle="modal" id="'+cdname+i+'" data-target="#deleteClass">删除</button></div></div>';

								$("#classbody").append(html);

							});
		};
		function scoreinfo() {
			//动态添加成绩表
			var dcname = 'dc';//button id 前缀
			var ddname = 'dd';
			$
					.each(
							score,
							function(i, ss) {

								html = '<div class="row"><div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">'
										+ ss.sno
										+ '</div><div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">'
										+ ss.cno
										+ '</div><div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">'
										+ ss.cn
										+ '</div><div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">'
										+ ss.score
										+ '</div><div class="col-lg-2 col-md-2 col-sm-2 col-xs-2"><button class="btn btn-success btn-xs" id="'+dcname+i+'" data-toggle="modal" data-target="#changeScore">修改</button><button class="btn btn-danger btn-xs" data-toggle="modal" id="'+ddname+i+'" data-target="#deleteScore">删除</button></div></div>';
								$("#scorebody").append(html);

							});
		};
		//添加成绩ajax
		$("#addscore").click(function() {
			var adds = {
				"sno" : $("#addssno").val(),
				"cno" : $("#addscno").val(),
				"cn" : $("#addscn").val(),
				"score" : $("#addsscore").val(),
			};
			var iscore = JSON.stringify(adds);
			$.ajax({
				url : "/mfc/score/insert",
				type : "post",
				contentType : "application/json;charset=UTF-8",
				data : iscore,
				success : function(data) {
					alert('添加成功');
					$("#addSource").modal('hide');
					location.reload(true);
				},
				error : function(e) {
					alert('添加失败');
				}
			});
		});
		//修改成绩ajax
		$("#updatescore").click(function() {
			var updates = {
				"sno" : $("#updatessno").val(),
				"cno" : $("#updatescno").val(),
				"cn" : $("#updatescn").val(),
				"score" : $("#updatesscore").val(),
			};
			var cscore = JSON.stringify(updates);
			$.ajax({
				url : "/mfc/score/change",
				type : "post",
				contentType : "application/json;charset=UTF-8",
				data : cscore,
				success : function(data) {
					alert('修改成功');
					$("#changeSource").modal('hide');
					location.reload(true);
				},
				error : function(e) {
					alert('修改失败');
				}
			});
		});
		//修改学生ajax
		$("#stuChange").click(function() {
			var changestu = {
				"sno" : $("#SNo1").val(),
				"sn" : $("#SN1").val(),
				"sex" : $("#Sex1").val(),
				"major" : $("#Major1").val(),
				"grade" : $("#Grade1").val(),
			};
			var cstu = JSON.stringify(changestu);
			$.ajax({
				url : "/mfc/stu/change",
				type : "post",
				contentType : "application/json;charset=UTF-8",
				data : cstu,
				success : function(data) {
					alert('修改成功');
					$("#changeStu").modal('hide'); 
					location.reload(true);
				},
				error : function(e) {
					alert('修改失败');
				}
			});
		});
		//添加学生ajax
		$("#stuIn").click(function() {
			var instu = {
				"sno" : $("#SNo").val(),
				"sn" : $("#SN").val(),
				"sex" : $("#Sex").val(),
				"major" : $("#Major").val(),
				"grade" : $("#Grade").val(),
			};
			var istu = JSON.stringify(instu);
			console.log(istu);
			$.ajax({
				url : "/mfc/stu/insert",
				type : "post",
				contentType : "application/json;charset=UTF-8",
				data : istu,
				success : function(data) {
					alert('添加成功');
					$("#addStu").modal('hide');
					location.reload(true);
				},
				error : function(e) {
					alert('添加失败');
				}
			});
		});

		//动态获取所有表的修改删除button id
		var onestudent;
		var onescore;
		var oneclass;
		$("button").click(function() {
			if (this.id.substring(0, 2) == 'sc') {
				onestudent = stu[this.id.substring(2, 3)];
				$("#SNo1").val(onestudent.sno);
				$("#SN1").val(onestudent.sn);
				$("#Sex1").val(onestudent.sex);
				$("#Major1").val(onestudent.major);
				$("#Grade1").val(onestudent.grade);
			} else if (this.id.substring(0, 2) == 'sd') {
				var sno = {
					"sno" : stu[this.id.substring(2, 3)].sno,
				};
				//console.log(sno);
				var dsno = JSON.stringify(sno);
				$("#stuDelete").click(function() {
					$.ajax({
						url : "/mfc/stu/delete",
						type : "post",
						contentType : "application/json;charset=UTF-8",
						data : dsno,
						success : function(data) {
							alert('删除成功');
							$("#deleteStu").modal('hide');
							location.reload(true);
						},
						error : function(e) {
							alert('删除失败');
						}
					});
				});
			} else if (this.id.substring(0, 2) == 'dc') {
				onescore = score[this.id.substring(2, 3)];
				$("#updatessno").val(onescore.sno);
				$("#updatescno").val(onescore.cno);
				$("#updatescn").val(onescore.cn);
				$("#updatesscore").val(onescore.score);
			} else if (this.id.substring(0, 2) == 'dd') {
				onescore = score[this.id.substring(2, 3)];
				var dscore = JSON.stringify(onescore);
				$("#deletescore").click(function() {
					$.ajax({
						url : "/mfc/score/delete",
						type : "post",
						contentType : "application/json;charset=UTF-8",
						data : dscore,
						success : function(data) {
							alert('删除成功');
							$("#deleteScore").modal('hide');
							location.reload(true);
						},
						error : function(e) {
							alert('删除失败');
						}
					});
				});
			} else if (this.id.substring(0, 2) == 'cc') {
				oneclass = cl[this.id.substring(2, 3)];
				$("#changeccno").val(oneclass.cno);
				$("#changeccn").val(oneclass.cn);
				$("#changecteacher").val(oneclass.teacher);
			} else if (this.id.substring(0, 2) == 'cd') {
				var cno = {
					"cno" : cl[this.id.substring(2, 3)].cno,
				};
				//console.log(sno);
				var dcno = JSON.stringify(cno);
				$("#deleteclass").click(function() {
					$.ajax({
						url : "/mfc/class/delete",
						type : "post",
						contentType : "application/json;charset=UTF-8",
						data : dcno,
						success : function(data) {
							alert('删除成功');
							$("#deleteClass").modal('hide');
							location.reload(true);
						},
						error : function(e) {
							alert('删除失败');
						}
					});
				});
			}
		});

		//添加课表ajax
		$("#addclass").click(function() {
			var addcl = {
				"cno" : $("#addccno").val(),
				"cn" : $("#addccn").val(),
				"teacher" : $("#addcteacher").val(),
			};
			var icl = JSON.stringify(addcl);
			console.log(icl);
			$.ajax({
				url : "/mfc/class/insert",
				type : "post",
				contentType : "application/json;charset=UTF-8",
				data : icl,
				success : function(data) {
					alert('添加成功');
					$("#addClass").modal('hide');
					location.reload(true);
				},
				error : function(e) {
					alert('添加失败');
				}
			});
		});
		//修改课表ajax
		$("#updateclass").click(function() {
			var updatec = {
				"cno" : $("#changeccno").val(),
				"cn" : $("#changeccn").val(),
				"teacher" : $("#changecteacher").val(),
			};
			var ccl = JSON.stringify(updatec);
			console.log(ccl);
			$.ajax({
				url : "/mfc/class/change",
				type : "post",
				contentType : "application/json;charset=UTF-8",
				data : ccl,
				success : function(data) {
					alert('修改成功');
					$("#changeClass").modal('hide');
					location.reload(true);
				},
				error : function(e) {
					alert('修改失败');
				}
			});
		});

		function huadong(my, unit, def, max) {
			$(my).noUiSlider(
					{
						range : [ 0, max ],
						start : [ def ],
						handles : 1,
						connect : 'upper',
						slide : function() {
							var val = Math.floor($(this).val());
							$(this).find('.noUi-handle').text(val + unit);
							console.log($(this).find('.noUi-handle').parent()
									.parent().html());
						},
						set : function() {
							var val = Math.floor($(this).val());
							$(this).find('.noUi-handle').text(val + unit);
						}
					});
			$(my).val(def, true);
		}

		huadong('.slider-minmax1', '分钟', '5', 30);
		huadong('.slider-minmax2', '分钟', '6', 15);
		huadong('.slider-minmax3', '分钟', '10', 60);
		huadong('.slider-minmax4', '次', '2', 10);
		huadong('.slider-minmax5', '天', '3', 7);
		huadong('.slider-minmax6', '天', '8', 10);
	</script>
</body>
</html>
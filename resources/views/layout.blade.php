<!doctype html>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<title>
		@yield('title')
	</title>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<base href="{{asset(' ')}}">
	<link rel="stylesheet" type="text/css" href="style/product_style.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Bellota&family=Tourney:wght@600&display=swap" rel="stylesheet">

</head>

<body>
	<div class="container-fluid">
		<h1 class="banner">TRUNG TÂM ĐIỆN MÁY PCN</h1>

		<nav class="justify-content-center navbar navbar-expand-sm bg-dark navbar-dark">
			<!-- Brand/logo -->
			<a class="navbar-brand" href="{{route('home')}}">Trang chủ</a>

			<!-- Links -->
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="{{route('proadd')}}">Thêm sản phẩm</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="{{route('prodlist')}}">Danh mục sản phẩm</a>
				</li>

			</ul>
		</nav>
	</div>

	@yield('content')
	<p class="footer"> @PCN Copyright @php echo date('m/y'); @endphp</p>
</body>
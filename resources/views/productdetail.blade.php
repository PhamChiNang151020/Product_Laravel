@extends('layout')
@section('content')
@section('title','Chi tiết sản phẩm')
	<div class="container-fluid">
	  <div class="prod_detail">
	  	Mã sản phẩm: {{$prod->ProductId}} <br>
	  	Tên sản phẩm: {{$prod->ProductName}} <br>
	  	Đơn vị tính: {{$prod->Unit}} <br>
	  	Đơn giá: @php echo number_format($prod->Price); @endphp <br>
	  	<img src="images/{{$prod->Img}}"> 
	  </div>
	</div>
@stop
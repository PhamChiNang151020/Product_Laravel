@extends('layout')
@section('content')
@section('title','Trang Chủ')
	<div class="container-fluid">
	  <div class="row">
	  	@foreach($product as $p)
	    <div class="product col-sm-3 col-md-3 col-lg-3" >
	    	<a href="{{route('proddetail',['ProductId'=>$p->ProductId])}}"> 
    		{{$p->ProductName}}</a> <br>
	    	<a href="{{route('proddetail',['ProductId'=>$p->ProductId])}}">
	    		<img src="images/{{$p->Img}}" height="50">
	    	</a>
	    	<br>
	    	@php echo number_format($p->Price); @endphp
	    </div>
	    @endforeach
	  </div>
	</div>
	{{$product->links()}}
@stop
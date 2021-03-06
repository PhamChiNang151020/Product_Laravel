<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Category;
use Illuminate\Support\Facades\DB;


class ProductController extends Controller
{
	public function index()
	{
		$product = Product::paginate(20);
		//$product= DB::table('product')->get();
    	return view('product', compact('product'));
	}
	public function getProductDetail($id)
	{
		$prod = Product::where('ProductId', $id)->first();
		return view('productdetail', compact('prod'));
	}
	public function addProduct()
	{
		$category = Category::all();
		return view('addproduct', compact('category'));
	}
	public function insertProduct(Request $request)
	{
		$messages = [
			'productname.required' => 'Vui lòng nhập tên sản phẩm',
			'price.required' => 'Vui lòng nhập giá sản phẩm',
		];

		$validator = Validator::make($request->all(),[
			'productname' =>'required',
			'price' =>'required',
		], $messages )->validate();

		$filename = "";
		if($request->file('fileUpload')->isValid())
		{
			$filename = $request->fileUpload->getClientOriginalName();
			$request->fileUpload->move('images/',$filename);
		}
		$product = Product::create([
			'ProductName'=>$request->productname,
			'Unit'=>$request->unit,
			'Price'=>$request->price,
			'CategoryId'=>$request->categories,
			'Img'=>$filename
		]);
		$product=Product::paginate(20);
		return view('product',compact('product'));
	}

	public function listProduct()
	{
		$product = Product::paginate(10);
		return view('productlist', compact('product'));
	}
	
	public function delProduct($id)
	{
		$record = Product::where('ProductId', $id)->first();

		if (file_exists(public_path('images/'.$record->Img)))
			unlink(public_path('images/'.$record->Img));

		Product::where('ProductId', $id)->delete();

		return redirect()->route('prodlist');
	}
}
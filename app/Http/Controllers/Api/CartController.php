<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Repositories\ProductRepository;
use App\Repositories\CartRepository;
use App\Http\Resources\BaseResource;
use App\Http\Requests\CartRequest;
use App\Http\Resources\cart\CartProductCollection;
use App\Http\Resources\cart\CartCollection;

class CartController extends BaseResource
{
    private $productRepository;
    private $cartRepository;

    public function __construct(ProductRepository $productRepository, CartRepository $cartRepository)
    {
        $this->productRepository = $productRepository;
        $this->cartRepository = $cartRepository;
    }
    public function add(Request $request, CartRequest $cartRequest)
    {
        $customer = $request->header('customer_id');
        $quantity = $cartRequest->quantity ?? 1;
        $cart = [   
            'customer_id'   => $customer,             
            'product_id'    => $cartRequest['product_id'],
            'size_id'       => $cartRequest['size_id'],
            'color_id'      => $cartRequest['color_id'],
            'quantity'      => $quantity
        ];
        $checkCart = $this->cartRepository->check($customer, $cart);
        if(empty($checkCart)){
            return new BaseResource($this->cartRepository->store($cart));
        }elseif($cart['customer_id'] == $checkCart->customer_id && $cart['product_id'] == $checkCart->product_id && $cart['size_id'] == $checkCart->size_id && $cart['color_id'] == $checkCart->color_id){
            return new BaseResource($this->cartRepository->plus($checkCart, $quantity));
        }else{
            return $this->sendError('Add failure');
        }
    }

    public function view(Request $request)
    {
        $customer = $request->header('customer_id');
        $items = new CartCollection($this->cartRepository->show($customer));
        if(!empty($items)){
            $price      = 0;
            $quantity   = 0;
            foreach($items as $rowCart){
                $price      += $rowCart['price']*$rowCart['quantity'];
                $quantity   += $rowCart['quantity'];
            }
            $totalPrice = $price;
            $totalQuantity = $quantity;
            return $this->sendResponse([
                'items'             => $items,
                'total_price'       =>  $totalPrice,
                'total_quantity'    =>  $totalQuantity,
            ], 'View Cart');
        }else{
            return $this->sendError('The cart is empty');
        }
    }

    public function update($id, CartRequest $cartRequest)
    {
        return new BaseResource($this->cartRepository->update($cartRequest->updateFilter(), $id));
    }

    public function remove($id, Request $request)
    {
        $customer = $request->header('customer_id');
        return new BaseResource($this->cartRepository->get($id, $customer));
    }

    public function clear(Request $request)
    {
        $customer = $request->header('customer_id');
        return new BaseResource($this->cartRepository->clear($customer));
    }
}

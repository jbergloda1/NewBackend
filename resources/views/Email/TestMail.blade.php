<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <h1>THÔNG TIN ĐƠN HÀNG {{$details["bill_id"]}}</h1>
    <h2>Xin Chào {{$details["customer"]}}</h2>

    
    <body style="font-family: sans-serif;">
        <div style="display: block; margin: auto; max-width: 600px;" class="main">
          <h1 style="font-size: 18px; font-weight: bold; margin-top: 20px">Test Gui Mail Thanh Cong</h1>
          <p>Cảm ơn bạn đã đặt hàng</p>
          <p>Ngày đặt hàng {{$details['dateorder']}} </p>
          <table>
            <tr>
              <td>Sản phẩm</td>
              <td>Size</td>
              <td>Màu</td>
              <td>Đơn giá</td>
              <td>Số lượng</td>
              <td>Tổng tiền</td>
            </tr>
            
              @foreach ($details['product'] as $key => $productDetails)
              <tr>
                <td>{{$productDetails->name}}</td>
                <td>{{$productDetails->size}}</td>
                <td>{{$productDetails->color}}</td>
                <td>{{$productDetails->price}}</td>
                <td>{{$productDetails->amount}}</td>
                <td>{{($productDetails->amount) * ($productDetails->price)}}</td>
              </tr>
              <tr>
                {{-- <td>{{ $a += ($productDetails->amount) * ($productDetails->price) }}</td> --}}
              </tr>
              @endforeach
            

          </table>
          
          {{-- <p>Số lượng {{$details['amount']}}</p> --}}
          {{-- <p>Tổng số tiền {{$details['price']}}</p> --}}
          <p>Phương thức thanh toán {{$details['payment']}}</p>
          {{-- <p>Ghi chú {{$details['note']}}</p> --}}
          <p>Đơn hàng đang được xử lý</p>

        </div>
        <!-- Example of invalid for email html/css, will be detected by Mailtrap: -->
        <style>
          .main { background-color: white; }
          a:hover { border-left-width: 1em; min-height: 2em; }
        </style>
      </body>
</body>
</html>
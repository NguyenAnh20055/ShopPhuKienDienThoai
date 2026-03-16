# Website bán phụ kiện điện thoại

## 1. Giới thiệu

Đây là dự án xây dựng **website bán phụ kiện điện thoại** được phát triển bằng **ASP.NET Core MVC** và **SQL Server**.

Hệ thống cho phép khách hàng xem sản phẩm, tìm kiếm sản phẩm, thêm vào giỏ hàng và đặt hàng. Ngoài ra, hệ thống có khu vực quản trị dành cho quản trị viên để quản lý sản phẩm, danh mục và đơn hàng.

Dự án tập trung vào phần **Back-end**, sử dụng kiến trúc **MVC (Model - View - Controller)** và **Entity Framework Core** để làm việc với cơ sở dữ liệu.

---

## 2. Công nghệ sử dụng

* ASP.NET Core MVC
* C#
* SQL Server
* Entity Framework Core
* LINQ
* Razor View
* Bootstrap

---

## 3. Kiến trúc hệ thống

Hệ thống được xây dựng theo mô hình **MVC (Model – View – Controller)**.

* Model: Quản lý dữ liệu và xử lý nghiệp vụ.
* View: Hiển thị giao diện cho người dùng.
* Controller: Nhận yêu cầu từ người dùng và xử lý logic giữa Model và View.

Ngoài ra, hệ thống sử dụng **Areas** để tách riêng phần quản trị và phần giao diện người dùng.

---

## 4. Đối tượng sử dụng

### Khách hàng

Khách hàng có thể thực hiện các chức năng sau:

* Đăng ký tài khoản
* Đăng nhập
* Xem danh sách sản phẩm
* Tìm kiếm sản phẩm
* Xem chi tiết sản phẩm
* Thêm sản phẩm vào giỏ hàng
* Cập nhật giỏ hàng
* Đặt hàng

### Quản trị viên

Quản trị viên có thể thực hiện các chức năng quản lý hệ thống:

* Đăng nhập hệ thống quản trị
* Quản lý danh mục sản phẩm
* Quản lý sản phẩm (thêm, sửa, xóa)
* Upload hình ảnh sản phẩm
* Quản lý đơn hàng
* Xem chi tiết đơn hàng
* Cập nhật trạng thái đơn hàng

---

## 5. Cơ sở dữ liệu

Các bảng dữ liệu chính trong hệ thống:

* Users: Lưu thông tin tài khoản người dùng
* Categories: Lưu danh mục sản phẩm
* Products: Lưu thông tin sản phẩm
* ProductImages: Lưu hình ảnh sản phẩm
* Orders: Lưu thông tin đơn hàng
* OrderDetails: Lưu chi tiết sản phẩm trong đơn hàng
* Payments: Lưu thông tin thanh toán

Quan hệ giữa các bảng:

* User (1) - (N) Orders
* Order (1) - (N) OrderDetails
* Product (1) - (N) OrderDetails
* Category (1) - (N) Products
* Product (1) - (N) ProductImages
* Order (1) - (1) Payment

---

## 6. Chức năng chính của hệ thống

### Chức năng dành cho khách hàng

* Xem danh sách sản phẩm
* Tìm kiếm sản phẩm
* Xem chi tiết sản phẩm
* Thêm sản phẩm vào giỏ hàng
* Cập nhật giỏ hàng
* Đặt hàng

### Chức năng dành cho quản trị viên

* Quản lý danh mục sản phẩm
* Quản lý sản phẩm
* Quản lý hình ảnh sản phẩm
* Quản lý đơn hàng
* Cập nhật trạng thái đơn hàng

---

## 7. Hướng dẫn chạy dự án

Bước 1: Clone project từ GitHub

git clone https://github.com/your-username/phone-accessories-store.git

Bước 2: Mở project bằng Visual Studio

Mở file solution của dự án.

Bước 3: Cấu hình kết nối cơ sở dữ liệu

Chỉnh sửa chuỗi kết nối trong file **appsettings.json**

Ví dụ:

"ConnectionStrings": {
"DefaultConnection": "Server=.;Database=PhoneStoreDB;Trusted_Connection=True;"
}

Bước 4: Chạy chương trình

Nhấn **Ctrl + F5** trong Visual Studio để chạy project.


## 8. Cấu trúc thư mục chính của dự án

PhoneAccessoriesStore
│
├── Controllers
├── Models
├── Views
├── Services
├── Repositories
├── Areas
│   └── Administrator
│        ├── Controllers
│        ├── Views
│        └── Models
│
├── wwwroot
├── appsettings.json
└── Program.cs


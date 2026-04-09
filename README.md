# 💥Nexora Suite  
### Smart CRM & Inventory Management System

Nexora Suite is a modern, full-featured **ASP.NET Core MVC** web application designed to streamline business operations by integrating **Customer Relationship Management (CRM)**, **Inventory Tracking**, and **Role-Based Authentication** into a unified platform.

---

## ✨ Project Overview

This system enables organizations to efficiently manage their customers, products, and operational workflows through a clean, responsive, and interactive interface.

It is built with scalability and maintainability in mind, leveraging **Entity Framework Core**, **SQL Server Stored Procedures**, and a modular architecture.

---

## 🔑 Key Features

- 🔐 **Role-Based Authentication & Authorization**
  - Secure login system using ASP.NET Identity
  - Admin-controlled access management

- 👥 **Customer Management (CRM)**
  - Insert, update, delete customers
  - Support for multiple delivery addresses (one-to-many relationship)
  - Image upload for customer profiles

- 📦 **Inventory & Product Management**
  - Product creation, update, and deletion
  - Stock level monitoring with visual indicators
  - Category and SKU support

- ⚡ **Dynamic UI & Interactions**
  - AJAX-based form handling
  - Real-time data updates without page reload
  - Clean and responsive design using Bootstrap

- 🗄️ **Database Optimization**
  - CRUD operations using **Stored Procedures**
  - Efficient query execution and better performance

- 🔄 **Transaction Management**
  - Ensures data consistency using EF Core transactions

- ✅ **Validation & Data Integrity**
  - Client-side + Server-side validation
  - Prevents invalid and inconsistent data entries

---

## 🛠️ Tech Stack

| Layer            | Technology |
|------------------|-----------|
| Backend          | ASP.NET Core MVC |
| ORM              | Entity Framework Core |
| Database         | SQL Server |
| Frontend         | HTML, CSS, Bootstrap |
| Scripting        | JavaScript, jQuery |
| Authentication   | ASP.NET Identity |

---

## 📸 Screenshots

#### 🔶   Login Page
> <img width="1345" height="891" alt="Login Page" src="https://github.com/user-attachments/assets/d180743c-0637-43f4-b73c-bf7f38856cad" />
#### 🔶   Home Page
> <img width="1353" height="944" alt="Home Page" src="https://github.com/user-attachments/assets/f569bdcf-25c6-41ec-acfb-981b13602997" />
#### 🔶   Product Catalog and Information
> <img width="1333" height="939" alt="Product" src="https://github.com/user-attachments/assets/df61b0a0-df73-4a14-bc2e-2d5affadf1b3" />
#### 🔶   Customer Create Form
> <img width="1373" height="927" alt="Customer Create" src="https://github.com/user-attachments/assets/b13159e5-5e5f-4cbd-b988-abef28fab5f8" />
#### 🔶   Customer Registry
> <img width="1350" height="951" alt="Customer Registry" src="https://github.com/user-attachments/assets/4fd051b4-77bc-49a6-95e1-0fc7a8c15b81" />
#### 🔶   Customer Information Edit
> <img width="1324" height="952" alt="Customer Edit Page" src="https://github.com/user-attachments/assets/7cf01ec2-6152-4560-8b33-1e693093db39" />

#### 🔶   Role Management
> <img width="1336" height="939" alt="Role management" src="https://github.com/user-attachments/assets/86c7dc72-9e9b-4972-86a6-1b2bae8c9da7" />
#### 🔶   Role Assign
> <img width="1358" height="937" alt="Role Assign" src="https://github.com/user-attachments/assets/f9181ef1-85ce-4720-86a7-7cef48f5053e" />

---

## ⚙️ Installation & Setup 
### 1. Clone the repository:
 - ```bash
   git clone https://github.com/Mottaki-601/Nexora-Suite-Smart-CRM-Inventory-Management-System.git
   cd Nexora-Suite-Smart-CRM-Inventory-Management-System
   ```
### 2. Open the project in Visual Studio 
   - Open the solution file (.sln)
### 3. Configure database 
Update connection string in:
   - appsettings.json
### 4. Setup Database (Important)
   - 🔴*This project uses a hybrid approach (EF Core + Stored Procedures)*

### 5. Run migrations / ensure database is ready
 - ```bash
   Add-Migration ScriptA -Context ApplicationDbContext
   Update-Database -Context ApplicationDbContext
     ```
 - ```bash
   Add-Migration ScriptB -Context AppDbContext
   Update-Database -Context AppDbContext 
   ```
### 6. Run the following SQL files:
   - **sp.sql** (Stored Procedures)
### 7. Run the Application  
   - Press:
Ctrl + F5
     
---

## 🎯 Use Case
Nexora Suite is ideal for:
- Small to medium businesses
- Retail management systems
- CRM + Inventory combined solutions
- Learning enterprise-level ASP.NET architecture

---

## 👨‍💻 Author

### Mottaki Billah 
📌 Passionate about building scalable web applications 

🔗 GitHub: https://github.com/Mottaki-601

---

## 📄 License

This project is licensed under the MIT License.

---

### ⭐ Support

If you find this project helpful, please consider giving it a ⭐ on GitHub!

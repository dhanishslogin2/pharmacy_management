-- Expanded demonstration data for the Pharmacy Management System.
-- Import after pharmacy_structure.sql and pharmacy_data.sql.
-- Reference date for expiry scenarios: 2026-09-12.

USE `pharmacy_db`;

INSERT IGNORE INTO `users` (`id`, `name`, `email`, `phone`, `address`, `password`, `role`, `status`) VALUES
(4, 'Aisha Khan', 'aisha.khan@example.com', '+91 9876543210', '18 Lake View Road, Delhi', '$2y$10$4xqh83bFE.JCuT2zKCeIZOp6U/K9TySbs1vHFoFE3LDXFFZZxYVAG', 'customer', 'active'),
(5, 'Rohan Mehta', 'rohan.mehta@example.com', '+91 9876543211', '42 Green Park, Mumbai', '$2y$10$4xqh83bFE.JCuT2zKCeIZOp6U/K9TySbs1vHFoFE3LDXFFZZxYVAG', 'customer', 'active'),
(6, 'Priya Nair', 'priya.nair@example.com', '+91 9876543212', '7 Palm Street, Kochi', '$2y$10$4xqh83bFE.JCuT2zKCeIZOp6U/K9TySbs1vHFoFE3LDXFFZZxYVAG', 'customer', 'inactive'),
(7, 'Daniel Thomas', 'daniel.thomas@example.com', '+91 9876543213', '11 Station Road, Chennai', '$2y$10$4xqh83bFE.JCuT2zKCeIZOp6U/K9TySbs1vHFoFE3LDXFFZZxYVAG', 'customer', 'active'),
(8, 'Meera Joshi', 'meera.joshi@example.com', '+91 9876543214', '29 Rose Colony, Pune', '$2y$10$4xqh83bFE.JCuT2zKCeIZOp6U/K9TySbs1vHFoFE3LDXFFZZxYVAG', 'customer', 'inactive'),
(9, 'Vikram Singh', 'vikram.singh@example.com', '+91 9876543215', '55 Market Road, Jaipur', '$2y$10$4xqh83bFE.JCuT2zKCeIZOp6U/K9TySbs1vHFoFE3LDXFFZZxYVAG', 'customer', 'active'),
(10, 'Nisha Kapoor', 'nisha.kapoor@example.com', '+91 9876543216', '3 Garden Lane, Hyderabad', '$2y$10$4xqh83bFE.JCuT2zKCeIZOp6U/K9TySbs1vHFoFE3LDXFFZZxYVAG', 'customer', 'active'),
(11, 'Arjun Rao', 'arjun.rao@example.com', '+91 9876543217', '91 Central Avenue, Bengaluru', '$2y$10$4xqh83bFE.JCuT2zKCeIZOp6U/K9TySbs1vHFoFE3LDXFFZZxYVAG', 'customer', 'inactive'),
(12, 'Fatima Ali', 'fatima.ali@example.com', '+91 9876543218', '16 River Road, Lucknow', '$2y$10$4xqh83bFE.JCuT2zKCeIZOp6U/K9TySbs1vHFoFE3LDXFFZZxYVAG', 'customer', 'active'),
(13, 'Neel Verma', 'neel.verma@example.com', '+91 9876543219', '8 Hill Street, Ahmedabad', '$2y$10$4xqh83bFE.JCuT2zKCeIZOp6U/K9TySbs1vHFoFE3LDXFFZZxYVAG', 'customer', 'active');

INSERT IGNORE INTO `categories` (`id`, `name`, `slug`, `description`, `status`) VALUES
(4, 'Cardiovascular', 'cardiovascular', 'Medicines for heart and blood pressure care.', 'active'),
(5, 'Respiratory', 'respiratory', 'Medicines for asthma, cough, and breathing conditions.', 'active'),
(6, 'Gastrointestinal', 'gastrointestinal', 'Medicines for digestion, acidity, and stomach care.', 'active'),
(7, 'Dermatology', 'dermatology', 'Creams, ointments, and treatments for skin conditions.', 'active'),
(8, 'Seasonal Care', 'seasonal-care', 'Seasonal and general wellness products.', 'inactive');

INSERT IGNORE INTO `suppliers` (`id`, `name`, `contact_person`, `phone`, `email`, `address`, `status`) VALUES
(4, 'HealthFirst Distributors', 'Kavita Shah', '+91 9123456701', 'orders@healthfirst.example', '14 Industrial Estate, Delhi', 'active'),
(5, 'Wellness Pharma Supply', 'Mohan Das', '+91 9123456702', 'sales@wellnesspharma.example', '22 Export Park, Mumbai', 'active'),
(6, 'NorthStar Medicals', 'Anita Roy', '+91 9123456703', 'contact@northstar.example', '6 Warehouse Road, Kolkata', 'inactive'),
(7, 'CarePlus Wholesale', 'Sanjay Patel', '+91 9123456704', 'orders@careplus.example', '31 Trade Centre, Ahmedabad', 'active'),
(8, 'Prime Hospital Supplies', 'Leena George', '+91 9123456705', 'supply@primehospital.example', '9 Medical Zone, Bengaluru', 'inactive');

INSERT IGNORE INTO `medicines` (`id`, `medicine_name`, `category_id`, `supplier_id`, `description`, `price`, `stock_quantity`, `expiry_date`, `image_url`, `status`) VALUES
(5, 'Azithromycin 500mg Tablets', 1, 4, 'Antibiotic tablets for bacterial infections.', 18.50, 0, '2026-05-20', NULL, 'active'),
(6, 'Cefixime 200mg Tablets', 1, 5, 'Broad-spectrum antibiotic tablets.', 22.00, 8, '2026-09-18', NULL, 'active'),
(7, 'Amoxicillin Clavulanate 625mg', 1, 4, 'Combination antibiotic tablets.', 35.00, 12, '2026-09-25', NULL, 'active'),
(8, 'Diclofenac 50mg Tablets', 2, 7, 'Pain and inflammation relief tablets.', 6.00, 0, '2027-03-15', NULL, 'active'),
(9, 'Amlodipine 5mg Tablets', 4, 5, 'Medicine for blood pressure management.', 9.50, 0, '2028-01-31', NULL, 'inactive'),
(10, 'Metformin 500mg Tablets', 4, 4, 'Medicine used to control blood glucose.', 7.00, 5, '2026-04-30', NULL, 'active'),
(11, 'Losartan 50mg Tablets', 4, 6, 'Medicine for hypertension management.', 13.00, 22, '2027-08-30', NULL, 'active'),
(12, 'Salbutamol Inhaler 100mcg', 5, 5, 'Relief inhaler for asthma symptoms.', 28.00, 3, '2027-02-28', NULL, 'active'),
(13, 'Budesonide Inhaler 200mcg', 5, 7, 'Maintenance inhaler for respiratory care.', 42.00, 14, '2026-10-05', NULL, 'active'),
(14, 'Omeprazole 20mg Capsules', 6, 4, 'Acid reflux and stomach protection capsules.', 16.00, 150, '2027-11-30', NULL, 'active'),
(15, 'Pantoprazole 40mg Tablets', 6, 8, 'Treatment for acidity and reflux.', 19.00, 0, '2026-03-31', NULL, 'inactive'),
(16, 'Cetirizine 10mg Tablets', 5, 7, 'Antihistamine for seasonal allergy symptoms.', 6.50, 1, '2027-07-31', NULL, 'active'),
(17, 'Hydrocortisone 1% Cream', 7, 5, 'Topical cream for minor skin irritation.', 9.50, 18, '2026-09-30', NULL, 'active'),
(18, 'Clotrimazole 1% Cream', 7, 4, 'Topical antifungal cream.', 12.00, 40, '2028-02-29', NULL, 'active'),
(19, 'Multivitamin Plus Tablets', 8, 6, 'Daily nutritional supplement.', 15.00, 0, '2027-12-31', NULL, 'active'),
(20, 'Electrolyte Recovery Sachets', 8, 8, 'Oral rehydration and electrolyte support.', 4.00, 0, '2028-04-30', NULL, 'inactive');

INSERT IGNORE INTO `stocks` (`id`, `medicine_id`, `batch_number`, `quantity`, `purchase_date`, `expiry_date`) VALUES
(5, 5, 'AZM-2025-05', 0, '2025-05-10', '2026-05-20'),
(6, 6, 'CFX-2026-01', 8, '2026-01-12', '2026-09-18'),
(7, 7, 'AMC-2026-02', 12, '2026-02-05', '2026-09-25'),
(8, 8, 'DCF-2026-03', 0, '2026-03-14', '2027-03-15'),
(9, 9, 'AML-2025-12', 0, '2025-12-01', '2028-01-31'),
(10, 10, 'MET-2025-04', 5, '2025-04-22', '2026-04-30'),
(11, 11, 'LOS-2026-03', 22, '2026-03-05', '2027-08-30'),
(12, 12, 'SLB-2026-01', 3, '2026-01-19', '2027-02-28'),
(13, 13, 'BUD-2026-04', 14, '2026-04-12', '2026-10-05'),
(14, 14, 'OMP-2026-05', 150, '2026-05-20', '2027-11-30'),
(15, 15, 'PAN-2025-03', 0, '2025-03-11', '2026-03-31'),
(16, 16, 'CTZ-2026-06', 1, '2026-06-10', '2027-07-31'),
(17, 17, 'HYD-2026-07', 18, '2026-07-02', '2026-09-30'),
(18, 18, 'CLO-2026-02', 40, '2026-02-18', '2028-02-29'),
(19, 19, 'MVI-2026-01', 0, '2026-01-05', '2027-12-31'),
(20, 20, 'ORS-2026-02', 0, '2026-02-10', '2028-04-30');

INSERT IGNORE INTO `stock_purchases` (`id`, `medicine_id`, `supplier_id`, `quantity`, `purchase_price`, `purchase_date`, `notes`) VALUES
(5, 5, 4, 100, 9.00, '2025-05-10', 'Expired antibiotic batch.'),
(6, 6, 5, 60, 12.00, '2026-01-12', 'Short-dated antibiotic batch.'),
(7, 7, 4, 80, 22.00, '2026-02-05', 'Combination antibiotic stock.'),
(8, 8, 7, 50, 3.00, '2026-03-14', 'Pain relief stock sold out.'),
(9, 9, 5, 40, 5.00, '2025-12-01', 'Inactive product batch.'),
(10, 10, 4, 70, 3.50, '2025-04-22', 'Expired diabetes medicine.'),
(11, 11, 6, 100, 7.00, '2026-03-05', 'Blood pressure medicine stock.'),
(12, 12, 5, 25, 15.00, '2026-01-19', 'Respiratory medicine stock.'),
(13, 13, 7, 40, 23.00, '2026-04-12', 'Expiring inhaler batch.'),
(14, 14, 4, 200, 8.00, '2026-05-20', 'Large stomach care shipment.'),
(15, 15, 8, 30, 10.00, '2025-03-11', 'Inactive expired product.'),
(16, 16, 7, 30, 3.00, '2026-06-10', 'Low stock allergy medicine.'),
(17, 17, 5, 45, 4.50, '2026-07-02', 'Expiring topical medicine.'),
(18, 18, 4, 60, 6.00, '2026-02-18', 'Antifungal cream stock.'),
(19, 19, 6, 80, 8.00, '2026-01-05', 'Out-of-stock seasonal supplement.'),
(20, 20, 8, 25, 2.00, '2026-02-10', 'Inactive electrolyte product.');

INSERT IGNORE INTO `sales` (`id`, `invoice_no`, `customer_id`, `customer_name`, `customer_phone`, `subtotal`, `discount`, `tax`, `grand_total`, `total_amount`, `notes`, `payment_method`, `payment_status`, `created_by`, `sale_date`) VALUES
(3, 'INV-2026-0003', 4, 'Aisha Khan', '+91 9876543210', 44.00, 0.00, 0.00, 44.00, 44.00, 'Antibiotic and allergy purchase.', 'upi', 'paid', 2, '2026-08-20'),
(4, 'INV-2026-0004', 5, 'Rohan Mehta', '+91 9876543211', 32.00, 2.00, 0.00, 30.00, 30.00, 'Repeat customer purchase.', 'card', 'paid', 1, '2026-08-25'),
(5, 'INV-2026-0005', 7, 'Daniel Thomas', '+91 9876543213', 84.00, 4.00, 0.00, 80.00, 80.00, 'Respiratory care purchase.', 'cash', 'paid', 2, '2026-08-30'),
(6, 'INV-2026-0006', 9, 'Vikram Singh', '+91 9876543215', 19.00, 0.00, 0.00, 19.00, 19.00, 'Stomach care purchase.', 'cash', 'partial', 1, '2026-09-02'),
(7, 'INV-2026-0007', 10, 'Nisha Kapoor', '+91 9876543216', 24.00, 0.00, 0.00, 24.00, 24.00, 'Topical medicine purchase.', 'card', 'paid', 2, '2026-09-05'),
(8, 'INV-2026-0008', NULL, 'Walk-in Customer', NULL, 15.00, 0.00, 0.00, 15.00, 15.00, 'Walk-in seasonal care purchase.', 'cash', 'unpaid', 1, '2026-09-10');

INSERT IGNORE INTO `sale_items` (`id`, `sale_id`, `medicine_id`, `medicine_name`, `quantity`, `unit_price`, `subtotal`, `total_price`) VALUES
(3, 3, 6, 'Cefixime 200mg Tablets', 2, 22.00, 44.00, 44.00),
(4, 4, 16, 'Cetirizine 10mg Tablets', 2, 6.50, 13.00, 13.00),
(5, 4, 8, 'Diclofenac 50mg Tablets', 2, 6.00, 12.00, 12.00),
(6, 5, 12, 'Salbutamol Inhaler 100mcg', 3, 28.00, 84.00, 84.00),
(7, 6, 14, 'Omeprazole 20mg Capsules', 1, 16.00, 16.00, 16.00),
(8, 6, 17, 'Hydrocortisone 1% Cream', 1, 9.50, 9.50, 9.50),
(9, 7, 18, 'Clotrimazole 1% Cream', 2, 12.00, 24.00, 24.00),
(10, 8, 19, 'Multivitamin Plus Tablets', 1, 15.00, 15.00, 15.00);

INSERT IGNORE INTO `stock_history` (`id`, `medicine_id`, `transaction_type`, `quantity`, `balance_after`, `reference_no`, `notes`, `user_id`) VALUES
(7, 5, 'PURCHASE', 100, 100, 'PO-DEMO-0005', 'Expired batch received for history testing.', 1),
(8, 5, 'EXPIRED', -100, 0, 'EXP-DEMO-0005', 'Batch removed after expiry.', 1),
(9, 6, 'PURCHASE', 60, 60, 'PO-DEMO-0006', 'Short-dated batch received.', 1),
(10, 6, 'SALE', -2, 58, 'INV-2026-0003', 'Antibiotic dispensed.', 2),
(11, 7, 'PURCHASE', 80, 80, 'PO-DEMO-0007', 'Combination antibiotic received.', 1),
(12, 7, 'SALE', -3, 77, 'INV-2026-0004', 'Antibiotic dispensed.', 1),
(13, 8, 'PURCHASE', 50, 50, 'PO-DEMO-0008', 'Pain relief stock received.', 1),
(14, 8, 'SALE', -50, 0, 'INV-2026-0004', 'Stock fully sold.', 1),
(15, 9, 'ADJUSTMENT', 0, 0, 'ADJ-DEMO-0009', 'Inactive product has no available stock.', 1),
(16, 10, 'PURCHASE', 70, 70, 'PO-DEMO-0010', 'Diabetes medicine received.', 1),
(17, 10, 'EXPIRED', -65, 5, 'EXP-DEMO-0010', 'Expired units removed.', 1),
(18, 11, 'PURCHASE', 100, 100, 'PO-DEMO-0011', 'Blood pressure stock received.', 1),
(19, 11, 'ADJUSTMENT', -78, 22, 'ADJ-DEMO-0011', 'Inventory count adjustment.', 1),
(20, 12, 'PURCHASE', 25, 25, 'PO-DEMO-0012', 'Inhaler stock received.', 1),
(21, 12, 'SALE', -22, 3, 'INV-2026-0005', 'Respiratory medicine dispensed.', 2),
(22, 13, 'PURCHASE', 40, 40, 'PO-DEMO-0013', 'Expiring inhaler batch received.', 1),
(23, 13, 'SALE', -26, 14, 'INV-2026-0005', 'Inhaler stock dispensed.', 2),
(24, 14, 'PURCHASE', 200, 200, 'PO-DEMO-0014', 'Large stock shipment received.', 1),
(25, 14, 'SALE', -50, 150, 'INV-2026-0006', 'Stomach medicine dispensed.', 1),
(26, 15, 'EXPIRED', -30, 0, 'EXP-DEMO-0015', 'Inactive expired batch removed.', 1),
(27, 16, 'PURCHASE', 30, 30, 'PO-DEMO-0016', 'Low-stock allergy medicine received.', 1),
(28, 16, 'SALE', -29, 1, 'INV-2026-0004', 'Allergy medicine dispensed.', 1),
(29, 17, 'PURCHASE', 45, 45, 'PO-DEMO-0017', 'Expiring topical batch received.', 1),
(30, 17, 'SALE', -27, 18, 'INV-2026-0007', 'Topical medicine dispensed.', 2);
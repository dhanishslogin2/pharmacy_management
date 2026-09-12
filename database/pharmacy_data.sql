-- Seed data for the Pharmacy Management System.
-- Import this file after pharmacy_structure.sql.

USE `pharmacy_db`;

INSERT IGNORE INTO `users` (`id`, `name`, `email`, `phone`, `address`, `password`, `role`, `status`) VALUES
(1, 'Administrator', 'admin@pharmacare.com', NULL, NULL, '$2y$10$4xqh83bFE.JCuT2zKCeIZOp6U/K9TySbs1vHFoFE3LDXFFZZxYVAG', 'admin', 'active'),
(2, 'Sarah Jenkins', 'sarah.j@pharmacare.com', '+1 555-0102', '12 Main Street, Boston', '$2y$10$4xqh83bFE.JCuT2zKCeIZOp6U/K9TySbs1vHFoFE3LDXFFZZxYVAG', 'pharmacist', 'active'),
(3, 'Michael Chang', 'michael.chang@example.com', '+1 555-0103', '45 Pine Road, Austin', '$2y$10$4xqh83bFE.JCuT2zKCeIZOp6U/K9TySbs1vHFoFE3LDXFFZZxYVAG', 'customer', 'active');

INSERT IGNORE INTO `categories` (`id`, `name`, `slug`, `description`, `status`) VALUES
(1, 'Antibiotics', 'antibiotics', 'Medicines used to treat bacterial infections.', 'active'),
(2, 'Pain Relief', 'pain-relief', 'Medicines used for pain and fever relief.', 'active'),
(3, 'Vitamins', 'vitamins', 'Vitamins and dietary supplements.', 'active');

INSERT IGNORE INTO `suppliers` (`id`, `name`, `contact_person`, `phone`, `email`, `address`, `status`) VALUES
(1, 'MedSupply Global', 'Robert Fox', '+1 555-0201', 'orders@medsupply.example', '100 Supply Avenue, Boston', 'active'),
(2, 'Cipla Healthcare', 'Rajesh Kumar', '+1 555-0202', 'sales@cipla.example', '25 Industrial Road, Mumbai', 'active'),
(3, 'Sun Pharma Logistics', 'Amit Patel', '+1 555-0203', 'sales@sunpharma.example', '60 Trade Hub, New Jersey', 'active');

INSERT IGNORE INTO `medicines` (`id`, `medicine_name`, `category_id`, `supplier_id`, `description`, `price`, `stock_quantity`, `expiry_date`, `image_url`, `status`) VALUES
(1, 'Amoxicillin 500mg Capsules', 1, 1, 'Broad-spectrum antibiotic capsules.', 12.50, 98, '2027-06-30', NULL, 'active'),
(2, 'Paracetamol 650mg Tablets', 2, 2, 'Pain and fever relief tablets.', 4.50, 250, '2027-12-31', NULL, 'active'),
(3, 'Vitamin C 1000mg Tablets', 3, 3, 'Vitamin C dietary supplement.', 11.50, 80, '2027-05-25', NULL, 'active'),
(4, 'Ibuprofen 400mg Tablets', 2, 1, 'Anti-inflammatory pain relief tablets.', 8.00, 58, '2027-11-10', NULL, 'active');

INSERT IGNORE INTO `stocks` (`id`, `medicine_id`, `batch_number`, `quantity`, `purchase_date`, `expiry_date`) VALUES
(1, 1, 'AMX-2026-01', 98, '2026-01-10', '2027-06-30'),
(2, 2, 'PCM-2026-02', 250, '2026-02-15', '2027-12-31'),
(3, 3, 'VIT-2026-03', 80, '2026-03-01', '2027-05-25'),
(4, 4, 'IBU-2026-04', 58, '2026-04-12', '2027-11-10');

INSERT IGNORE INTO `sales` (`id`, `invoice_no`, `customer_id`, `customer_name`, `customer_phone`, `subtotal`, `discount`, `tax`, `grand_total`, `total_amount`, `notes`, `payment_method`, `payment_status`, `created_by`, `sale_date`) VALUES
(1, 'INV-2026-0001', 3, 'Michael Chang', '+1 555-0103', 25.00, 0.00, 0.00, 25.00, 25.00, NULL, 'cash', 'paid', 2, '2026-09-12'),
(2, 'INV-2026-0002', NULL, 'Walk-in Customer', NULL, 16.00, 1.00, 0.00, 15.00, 15.00, NULL, 'card', 'paid', 1, '2026-09-12');

INSERT IGNORE INTO `sale_items` (`id`, `sale_id`, `medicine_id`, `medicine_name`, `quantity`, `unit_price`, `subtotal`, `total_price`) VALUES
(1, 1, 1, 'Amoxicillin 500mg Capsules', 2, 12.50, 25.00, 25.00),
(2, 2, 4, 'Ibuprofen 400mg Tablets', 2, 8.00, 16.00, 16.00);

INSERT IGNORE INTO `stock_history` (`id`, `medicine_id`, `transaction_type`, `quantity`, `balance_after`, `reference_no`, `notes`, `user_id`) VALUES
(1, 1, 'PURCHASE', 100, 100, 'PO-2026-0001', 'Initial stock received.', 1),
(2, 2, 'PURCHASE', 250, 250, 'PO-2026-0002', 'Initial stock received.', 1),
(3, 3, 'PURCHASE', 80, 80, 'PO-2026-0003', 'Initial stock received.', 1),
(4, 4, 'PURCHASE', 60, 60, 'PO-2026-0004', 'Initial stock received.', 1),
(5, 1, 'SALE', -2, 98, 'INV-2026-0001', 'Medicine sold.', 2),
(6, 4, 'SALE', -2, 58, 'INV-2026-0002', 'Medicine sold.', 1);

INSERT IGNORE INTO `stock_purchases` (`id`, `medicine_id`, `supplier_id`, `quantity`, `purchase_price`, `purchase_date`, `notes`) VALUES
(1, 1, 1, 100, 6.50, '2026-01-10', 'Initial antibiotic stock.'),
(2, 2, 2, 250, 2.00, '2026-02-15', 'Initial pain relief stock.'),
(3, 3, 3, 80, 5.00, '2026-03-01', 'Initial vitamin stock.'),
(4, 4, 1, 60, 4.00, '2026-04-12', 'Initial anti-inflammatory stock.');
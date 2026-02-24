-- -- =======================================================
-- -- data.sql with YOUR WORKING BCrypt hash
-- -- Password: password123
-- -- Hash: $2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2
-- -- =======================================================
--
-- -- =======================================================
-- -- 1. CENTRAL BANK & ADMIN
-- -- =======================================================
--
-- INSERT INTO central_bank (id, name, code, address, contact_email, contact_phone, total_earning, created_at, updated_at)
-- VALUES (1, 'Reserve Bank of India', 'RBI001', 'Mumbai, India', 'admin@rbi.org.in', '022-12345678', 0.00, NOW(), NOW());
--
-- -- Login: superadmin / Password: password123
-- INSERT INTO users (id, username, password, role)
-- VALUES (1, 'superadmin', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'CENTRALADMIN');
--
-- INSERT INTO central_bank_admin (id, full_name, username, email, password_hash, role, is_active, central_bank_id, user_id, created_at)
-- VALUES (1, 'Super Admin', 'superadmin', 'admin@rbi.org.in', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'central_admin', true, 1, 1, NOW());
--
--
-- -- =======================================================
-- -- 2. HEAD BANK & ADMIN
-- -- =======================================================
--
-- INSERT INTO head_bank (id, name, code, routing_number, address, contact_email, contact_phone, total_earning, is_active, central_bank_id, created_at, updated_at)
-- VALUES (1, 'State Bank of India', 'SBI001', 'RT-SBI-001', 'Nariman Point, Mumbai', 'contact@sbi.co.in', '1800-11-2211', 0.00, true, 1, NOW(), NOW());
--
-- -- Login: headadmin_sbi / Password: password123
-- INSERT INTO users (id, username, password, role)
-- VALUES (2, 'headadmin_sbi', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'HEADMANAGER');
--
-- INSERT INTO head_bank_admin (id, full_name, username, email, password_hash, role, is_active, head_bank_id, user_id, created_at)
-- VALUES (1, 'Rajesh Kumar', 'headadmin_sbi', 'rajesh@sbi.co.in', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'head_bank_admin', true, 1, 2, NOW());
--
--
-- -- =======================================================
-- -- 3. BRANCH & MANAGER
-- -- =======================================================
--
-- INSERT INTO branch (id, name, branch_code, ifsc_code, address, contact_email, contact_phone, total_earning, is_active, head_bank_id, created_at, updated_at)
-- VALUES (1, 'Connaught Place Branch', 'BR001', 'SBIN0001234', 'Connaught Place, New Delhi', 'cp.branch@sbi.co.in', '011-23456789', 0.00, true, 1, NOW(), NOW());
--
-- -- Login: manager_cp / Password: password123
-- INSERT INTO users (id, username, password, role)
-- VALUES (3, 'manager_cp', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'BRANCHMANAGER');
--
-- -- Note: Branch Manager Entity table insert was commented out in your original code, kept as is.
-- -- INSERT INTO branch_manager (id, full_name, username, email, password_hash, role, is_active, branch_id, user_id, created_at)
-- -- VALUES (1, 'Amit Sharma', 'manager_cp', 'amit.sharma@sbi.co.in', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'branch_manager', true, 1, 3, NOW());
--
--
-- -- =======================================================
-- -- 4. TELLERS
-- -- =======================================================
--
-- -- Login: teller_john / Password: password123
-- INSERT INTO users (id, username, password, role)
-- VALUES (4, 'teller_john', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'TELLER');
--
-- INSERT INTO teller (id, full_name, username, email, password_hash, role, is_active, branch_id, teller_account_id, teller_account_number, user_id, created_at)
-- VALUES (1, 'John Doe', 'teller_john', 'john.doe@sbi.co.in', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'teller', true, 1, 999, 'TELLER-ACC-001', 4, NOW());
--
--
-- -- =======================================================
-- -- 5. CUSTOMERS & ACCOUNTS
-- -- =======================================================
--
-- -- Login: alice_wonder / Password: password123
-- INSERT INTO users (id, username, password, role)
-- VALUES (5, 'alice_wonder', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'CUSTOMER');
--
-- INSERT INTO customer (id, customer_id, first_name, last_name, email, phone, address, aadhar_number, pan_number, is_active, transaction_pin_hash, branch_id, user_id, created_at, updated_at)
-- VALUES (1, 'CUST001', 'Alice', 'Wonderland', 'alice@gmail.com', '9876543210', '123 Baker Street', '1234-5678-9012', 'ABCDE1234F', true, '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 1, 5, NOW(), NOW());
--
-- INSERT INTO account (id, account_number, account_type, current_balance, available_balance, currency, status, customer_id, branch_id, account_holder_type, opened_date, created_at, updated_at)
-- VALUES (1, 'ACC1000001', 'SAVINGS', 50000.00, 50000.00, 'INR', 'ACTIVE', 1, 1, 'CUSTOMER', NOW(), NOW(), NOW());
--
--
-- -- Login: bob_builder / Password: password123
-- INSERT INTO users (id, username, password, role)
-- VALUES (6, 'bob_builder', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'CUSTOMER');
--
-- INSERT INTO customer (id, customer_id, first_name, last_name, email, phone, address, aadhar_number, pan_number, is_active, transaction_pin_hash, branch_id, user_id, created_at, updated_at)
-- VALUES (2, 'CUST002', 'Bob', 'Builder', 'bob@construction.com', '9123456789', '456 Brick Lane', '9876-5432-1098', 'FGHIJ5678K', true, '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 1, 6, NOW(), NOW());
--
-- INSERT INTO account (id, account_number, account_type, current_balance, available_balance, currency, status, customer_id, branch_id, account_holder_type, opened_date, created_at, updated_at)
-- VALUES (2, 'ACC2000002', 'CURRENT', 100000.00, 100000.00, 'INR', 'ACTIVE', 2, 1, 'CUSTOMER', NOW(), NOW(), NOW());
--
--
-- -- =======================================================
-- -- 6. LOAN OFFERS & DEBIT CARD RULES
-- -- =======================================================
--
-- INSERT INTO loan_offers (id, offer_name, loan_type, interest_rate, min_amount, max_amount, min_tenure_months, max_tenure_months, eligibility_criteria, is_active, head_bank_id, created_at, updated_at)
-- VALUES (1, 'Super Saver Personal Loan', 'PERSONAL', 10.5, 50000, 1000000, 12, 60, 'Salary > 25000', true, 1, NOW(), NOW());
--
-- INSERT INTO debit_card_rules (id, card_type, daily_withdrawal_limit, daily_transaction_limit, annual_fee, international_usage, is_active, head_bank_id, created_at)
-- VALUES (1, 'VISA_GOLD', 50000.00, 100000.00, 500.00, true, true, 1, NOW());
--
--
-- -- =======================================================
-- -- 7. TRANSACTIONS
-- -- =======================================================
--
-- INSERT INTO transactions (id, transaction_reference, from_account_id, to_account_id, amount, transaction_type, status, description, fee_amount, net_amount, total_charges, transaction_date, created_at)
-- VALUES (1, 'TXN-REF-001', 1, 2, 5000.00, 'TRANSFER', 'COMPLETED', 'Rent Payment', 0.00, 5000.00, 0.00, NOW(), NOW());
--
-- UPDATE account SET current_balance = 45000.00, available_balance = 45000.00 WHERE id = 1;
-- UPDATE account SET current_balance = 105000.00, available_balance = 105000.00 WHERE id = 2;
--
--
-- -- =======================================================
-- -- 8. CHARGES BOOK (Fee Configuration)
-- -- =======================================================
--
-- INSERT INTO charges_book (id, fee_name, fee_amount, bank_id, bank_type, transaction_type, min_value, max_value, is_active, created_at, updated_at)
-- VALUES (1, 'IMPS Fee', 5.00, 1, 'HEAD_BANK', 'TRANSFER', 0, 100000, true, NOW(), NOW());
--
--
-- -- =======================================================
-- -- ADDING NEW HEAD BANK (HDFC), BRANCH, STAFF AND CUSTOMER
-- -- =======================================================
--
-- -- 1. ADD NEW HEAD BANK (ID: 2)
-- -- =======================================================
-- INSERT INTO head_bank (id, name, code, routing_number, address, contact_email, contact_phone, total_earning, is_active, central_bank_id, created_at, updated_at)
-- VALUES (2, 'HDFC Bank', 'HDFC001', 'RT-HDFC-001', 'Senapati Bapat Marg, Mumbai', 'contact@hdfc.com', '1800-22-3344', 0.00, true, 1, NOW(), NOW());
--
-- -- Login: headadmin_hdfc / Password: password123
-- INSERT INTO users (id, username, password, role)
-- VALUES (7, 'headadmin_hdfc', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'HEADMANAGER');
--
-- -- Head Bank Admin Entity
-- INSERT INTO head_bank_admin (id, full_name, username, email, password_hash, role, is_active, head_bank_id, user_id, created_at)
-- VALUES (2, 'Suresh Menon', 'headadmin_hdfc', 'suresh@hdfc.com', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'head_bank_admin', true, 2, 7, NOW());
--
--
-- -- 2. ADD NEW BRANCH FOR HDFC (ID: 2)
-- -- =======================================================
-- INSERT INTO branch (id, name, branch_code, ifsc_code, address, contact_email, contact_phone, total_earning, is_active, head_bank_id, created_at, updated_at)
-- VALUES (2, 'Indiranagar Branch', 'BR002', 'HDFC0005678', 'Indiranagar, Bangalore', 'indiranagar@hdfc.com', '080-12345678', 0.00, true, 2, NOW(), NOW());
--
-- -- Login: manager_indiranagar / Password: password123
-- INSERT INTO users (id, username, password, role)
-- VALUES (8, 'manager_indiranagar', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'BRANCHMANAGER');
--
-- -- Branch Manager Entity
-- INSERT INTO branch_manager (id, full_name, username, email, password_hash, role, is_active, branch_id, user_id, created_at)
-- VALUES (2, 'Priya Reddy', 'manager_indiranagar', 'priya.reddy@hdfc.com', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'branch_manager', true, 2, 8, NOW());
--
--
-- -- 3. ADD NEW TELLER FOR HDFC BRANCH (ID: 2)
-- -- =======================================================
-- -- Login: teller_vikram / Password: password123
-- INSERT INTO users (id, username, password, role)
-- VALUES (9, 'teller_vikram', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'TELLER');
--
-- -- Teller Entity
-- INSERT INTO teller (id, full_name, username, email, password_hash, role, is_active, branch_id, teller_account_id, teller_account_number, user_id, created_at)
-- VALUES (2, 'Vikram Singh', 'teller_vikram', 'vikram.singh@hdfc.com', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'teller', true, 2, 888, 'TELLER-ACC-002', 9, NOW());
--
--
-- -- 4. ADD NEW CUSTOMER FOR HDFC BRANCH
-- -- =======================================================
-- -- Login: charlie_chaplin / Password: password123
-- INSERT INTO users (id, username, password, role)
-- VALUES (10, 'charlie_chaplin', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'CUSTOMER');
--
-- -- Customer Entity
-- INSERT INTO customer (id, customer_id, first_name, last_name, email, phone, address, aadhar_number, pan_number, is_active, transaction_pin_hash, branch_id, user_id, created_at, updated_at)
-- VALUES (3, 'CUST003', 'Charlie', 'Chaplin', 'charlie@movies.com', '7778889990', 'Hollywood Blvd, Mumbai', '1122-3344-5566', 'ZZYYX9876L', true, '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 2, 10, NOW(), NOW());
--
-- -- Customer Account (HDFC Savings)
-- INSERT INTO account (id, account_number, account_type, current_balance, available_balance, currency, status, customer_id, branch_id, account_holder_type, opened_date, created_at, updated_at)
-- VALUES (3, 'ACC3000003', 'SAVINGS', 75000.00, 75000.00, 'INR', 'ACTIVE', 3, 2, 'CUSTOMER', NOW(), NOW(), NOW());
--
--
-- -- 5. ADD LOAN OFFERS & RULES FOR HDFC
-- -- =======================================================
-- INSERT INTO loan_offers (id, offer_name, loan_type, interest_rate, min_amount, max_amount, min_tenure_months, max_tenure_months, eligibility_criteria, is_active, head_bank_id, created_at, updated_at)
-- VALUES (2, 'HDFC Dream Home Loan', 'HOME', 8.5, 1000000, 5000000, 60, 240, 'Salary > 50000', true, 2, NOW(), NOW());
--
-- INSERT INTO debit_card_rules (id, card_type, daily_withdrawal_limit, daily_transaction_limit, annual_fee, international_usage, is_active, head_bank_id, created_at)
-- VALUES (2, 'MASTERCARD_PLATINUM', 100000.00, 200000.00, 1000.00, true, true, 2, NOW());
--
-- -- 6. ADD CHARGES FOR HDFC
-- -- =======================================================
-- INSERT INTO charges_book (id, fee_name, fee_amount, bank_id, bank_type, transaction_type, min_value, max_value, is_active, created_at, updated_at)
-- VALUES (2, 'NEFT Fee', 2.50, 2, 'HEAD_BANK', 'TRANSFER', 0, 500000, true, NOW(), NOW());
--
--
-- -- New testuser for customer role  and other tables included Username:- testUser and password: password123
-- -- =======================================================
-- -- 1. CREATE USER (testUser / password123)
-- -- =======================================================
-- INSERT INTO users (id, username, password, role)
-- VALUES (11, 'testUser', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'CUSTOMER');
--
-- -- =======================================================
-- -- 2. CREATE CUSTOMER PROFILE
-- -- =======================================================
-- INSERT INTO customer (id, customer_id, first_name, last_name, email, phone, address, aadhar_number, pan_number, is_active, transaction_pin_hash, branch_id, user_id, created_at, updated_at)
-- VALUES (4, 'CUST004', 'Test', 'User', 'testuser@example.com', '9988776655', 'Phagwara, Punjab', '4455-6677-8899', 'TESTP1234Z', true, '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 1, 11, NOW(), NOW());
--
-- -- =======================================================
-- -- 3. CREATE ACCOUNTS
-- -- =======================================================
-- INSERT INTO account (id, account_number, account_type, current_balance, available_balance, currency, status, customer_id, branch_id, account_holder_type, opened_date, created_at, updated_at)
-- VALUES (4, 'ACC4000004', 'SAVINGS', 25000.00, 25000.00, 'INR', 'ACTIVE', 4, 1, 'CUSTOMER', NOW(), NOW(), NOW());
--
-- INSERT INTO account (id, account_number, account_type, current_balance, available_balance, currency, status, customer_id, branch_id, account_holder_type, opened_date, created_at, updated_at)
-- VALUES (5, 'ACC5000005', 'CURRENT', 10000.00, 10000.00, 'INR', 'ACTIVE', 4, 1, 'CUSTOMER', NOW(), NOW(), NOW());
--
-- -- =======================================================
-- -- 4. CREATE DEBIT CARD (Fixed columns based on your Entity)
-- -- =======================================================
-- -- Columns: id, card_number, cvv, expiry_date, is_active, is_blocked, account_id, card_rules_id, created_at
-- INSERT INTO debit_card (id, card_number, cvv, expiry_date, is_active, is_blocked, account_id, card_rules_id, created_at)
-- VALUES (1, '1234567812345678', '123', '2030-12-31 23:59:59', true, false, 4, 1, NOW());
--
-- -- =======================================================
-- -- 5. CREATE A SAMPLE LOAN APPLICATION
-- -- =======================================================
-- INSERT INTO loan_application (id, customer_id, loan_offer_id, requested_amount, requested_tenure_months, purpose, status, created_at, updated_at)
-- VALUES (1, 4, 1, 50000.00, 12, 'Testing Dashboard', 'PENDING', NOW(), NOW());
--
--
-- -------------------------------------------manager------------------------
-- -- =================================================================================
-- -- UI TESTING DATA FOR MANAGER: manager_cp (Branch ID: 1)
-- -- =================================================================================
--
-- -- 1. ENABLE THE BRANCH MANAGER PROFILE (Critical for Login)
-- -- This was commented out in your original file. We need it active.
-- -- If you already uncommented it, you can remove this block.
-- INSERT INTO branch_manager (id, full_name, username, email, password_hash, role, is_active, branch_id, user_id, created_at)
-- VALUES (1, 'Amit Sharma', 'manager_cp', 'amit.sharma@sbi.co.in', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'branch_manager', true, 1, 3, NOW());
--
--
-- -- 2. POPULATE SECTION 5: TELLER MANAGEMENT
-- -- We add a second teller so you can test the "Deactivate" button.
-- -- Login: teller_ui_test / password123
-- INSERT INTO users (id, username, password, role)
-- VALUES (101, 'teller_ui_test', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'TELLER');
--
-- INSERT INTO teller (id, full_name, username, email, password_hash, role, is_active, branch_id, teller_account_id, teller_account_number, user_id, created_at)
-- VALUES (101, 'Suresh Tester', 'teller_ui_test', 'suresh@test.com', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'teller', true, 1, 9999, 'TELLER-ACC-TEST', 101, NOW());
--
--
-- -- 3. POPULATE SECTION 3: LOAN MANAGEMENT (Pending Loans)
-- -- We need Pending loans so the "Approve/Reject" buttons appear.
-- -- Request 1: From Alice (Customer 1)
-- INSERT INTO loan_application (id, customer_id, loan_offer_id, requested_amount, requested_tenure_months, purpose, status, created_at, updated_at)
-- VALUES (101, 1, 1, 200000.00, 24, 'Home Renovation', 'PENDING', NOW(), NOW());
--
-- -- Request 2: From Bob (Customer 2)
-- INSERT INTO loan_application (id, customer_id, loan_offer_id, requested_amount, requested_tenure_months, purpose, status, created_at, updated_at)
-- VALUES (102, 2, 1, 50000.00, 12, 'Medical Emergency', 'PENDING', NOW(), NOW());
--
--
-- -- 4. POPULATE SECTION 4: ACCOUNTS (Freeze/Unfreeze)
-- -- We add a FROZEN account for Alice so you can test the "Unfreeze" action.
-- INSERT INTO account (id, account_number, account_type, current_balance, available_balance, currency, status, customer_id, branch_id, account_holder_type, opened_date, created_at, updated_at)
-- VALUES (101, 'ACC-FROZEN-01', 'SAVINGS', 1500.00, 1500.00, 'INR', 'FROZEN', 1, 1, 'CUSTOMER', NOW(), NOW(), NOW());
--
--
-- -- 5. POPULATE SECTION 1 & 2: ANALYTICS & CHARGES
-- -- 5.1 Add Transactions for the "Transaction Log" Modal
-- INSERT INTO transactions (id, transaction_reference, from_account_id, to_account_id, amount, transaction_type, status, description, fee_amount, net_amount, total_charges, transaction_date, created_at)
-- VALUES (101, 'TXN-UI-TEST-01', 1, 2, 2500.00, 'TRANSFER', 'COMPLETED', 'UI Test Transfer', 5.00, 2500.00, 5.00, NOW(), NOW());
--
-- INSERT INTO transactions (id, transaction_reference, from_account_id, amount, transaction_type, status, description, fee_amount, net_amount, total_charges, transaction_date, created_at)
-- VALUES (102, 'TXN-UI-TEST-02', 1, 1000.00, 'WITHDRAWAL', 'COMPLETED', 'ATM Withdrawal', 0.00, 1000.00, 0.00, NOW(), NOW());
--
-- -- 5.2 Add Charges for the "Earnings" and "Charges" Modals
-- -- Linked to Branch 1 (Connaught Place)
-- INSERT INTO charges (id, fee_name, bank_type, charged_amount, bank_id, transaction_id, created_at)
-- VALUES (101, 'IMPS Fee', 'BANK_BRANCH', 15.00, 1, 101, NOW());
--
-- INSERT INTO charges (id, fee_name, bank_type, charged_amount, bank_id, created_at)
-- VALUES (102, 'Annual Maintenance', 'BANK_BRANCH', 500.00, 1, NOW());
--
-- INSERT INTO charges (id, fee_name, bank_type, charged_amount, bank_id, created_at)
-- VALUES (103, 'SMS Alert Fee', 'BANK_BRANCH', 50.00, 1, NOW());
--
--
--
-- ----- teller checking
-- -- =================================================================================
-- -- EXPANDED DATA FOR BRANCH 1 (Connaught Place)
-- -- Focus: Pending Requests for Teller & Manager Testing
-- -- IDs range: 500 - 600 to avoid conflicts
-- -- =================================================================================
--
-- -- 1. ADD NEW CUSTOMERS TO BRANCH 1
-- -- =======================================================
--
-- -- User: rohit_sharma
-- INSERT INTO users (id, username, password, role)
-- VALUES (501, 'rohit_sharma', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'CUSTOMER');
--
-- INSERT INTO customer (id, customer_id, first_name, last_name, email, phone, address, aadhar_number, pan_number, is_active, transaction_pin_hash, branch_id, user_id, created_at, updated_at)
-- VALUES (501, 'CUST-501', 'Rohit', 'Sharma', 'rohit@cricket.com', '9911223344', 'Delhi Sports Complex', '5011-5011-5011', 'ROHIT501PAN', true, '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 1, 501, NOW(), NOW());
--
-- INSERT INTO account (id, account_number, account_type, current_balance, available_balance, currency, status, customer_id, branch_id, account_holder_type, opened_date, created_at, updated_at)
-- VALUES (501, 'ACC-501-SAV', 'SAVINGS', 150000.00, 150000.00, 'INR', 'ACTIVE', 501, 1, 'CUSTOMER', NOW(), NOW(), NOW());
--
--
-- -- User: priya_verma
-- INSERT INTO users (id, username, password, role)
-- VALUES (502, 'priya_verma', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'CUSTOMER');
--
-- INSERT INTO customer (id, customer_id, first_name, last_name, email, phone, address, aadhar_number, pan_number, is_active, transaction_pin_hash, branch_id, user_id, created_at, updated_at)
-- VALUES (502, 'CUST-502', 'Priya', 'Verma', 'priya@tech.com', '8877665544', 'Noida Sec 62', '5022-5022-5022', 'PRIYA502PAN', true, '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 1, 502, NOW(), NOW());
--
-- INSERT INTO account (id, account_number, account_type, current_balance, available_balance, currency, status, customer_id, branch_id, account_holder_type, opened_date, created_at, updated_at)
-- VALUES (502, 'ACC-502-CUR', 'CURRENT', 500000.00, 500000.00, 'INR', 'ACTIVE', 502, 1, 'CUSTOMER', NOW(), NOW(), NOW());
--
--
-- -- 2. PENDING ACCOUNT OPENING REQUESTS (For Teller)
-- -- =======================================================
-- -- Rohit wants a second account (Current Account)
-- INSERT INTO account_request (id, customer_id, branch_id, account_type, status, created_at)
-- VALUES (501, 501, 1, 'CURRENT', 'PENDING', NOW());
--
-- -- Priya wants a second account (Savings Account)
-- INSERT INTO account_request (id, customer_id, branch_id, account_type, status, created_at)
-- VALUES (502, 502, 1, 'SAVINGS', 'PENDING', NOW());
--
--
-- -- 3. PENDING DEBIT CARD REQUESTS (For Teller)
-- -- =======================================================
-- -- Alice (ID 1) wants a new card for her Savings Account (Acc ID 1)
-- INSERT INTO card_request (id, requested_by, account_id, card_type, status, created_at)
-- VALUES (501, 1, 1, 'VISA_PLATINUM', 'PENDING', NOW());
--
-- -- Rohit (ID 501) wants a card for his Savings Account (Acc ID 501)
-- INSERT INTO card_request (id, requested_by, account_id, card_type, status, created_at)
-- VALUES (502, 501, 501, 'MASTERCARD_GOLD', 'PENDING', NOW());
--
--
-- -- 4. PENDING CHEQUE BOOK REQUESTS (For Teller)
-- -- =======================================================
-- -- Bob (ID 2) wants a cheque book for his Current Account (Acc ID 2)
-- INSERT INTO cheque_book_request (id, requested_by, account_id, number_of_leaves, status, created_at)
-- VALUES (501, 2, 2, 50, 'PENDING', NOW());
--
-- -- Priya (ID 502) wants a cheque book for her Current Account (Acc ID 502)
-- INSERT INTO cheque_book_request (id, requested_by, account_id, number_of_leaves, status, created_at)
-- VALUES (502, 502, 502, 25, 'PENDING', NOW());
--
--
-- -- 5. PENDING LOAN APPLICATIONS (For Branch Manager)
-- -- =======================================================
-- -- Rohit applying for a Car Loan
-- INSERT INTO loan_application (id, customer_id, loan_offer_id, requested_amount, requested_tenure_months, purpose, status, created_at, updated_at)
-- VALUES (501, 501, 1, 1200000.00, 60, 'Buying a Tesla', 'PENDING', NOW(), NOW());
--
-- -- Priya applying for a Personal Loan
-- INSERT INTO loan_application (id, customer_id, loan_offer_id, requested_amount, requested_tenure_months, purpose, status, created_at, updated_at)
-- VALUES (502, 502, 1, 300000.00, 24, 'International Trip', 'PENDING', NOW(), NOW());
--
--
-- -- 6. EXTRA TRANSACTIONS (For Analytics Charts)
-- -- =======================================================
-- -- Transfer from Rohit to Priya
-- INSERT INTO transactions (id, transaction_reference, from_account_id, to_account_id, amount, transaction_type, status, description, fee_amount, net_amount, total_charges, transaction_date, created_at)
-- VALUES (501, 'TXN-501-REF', 501, 502, 10000.00, 'TRANSFER', 'COMPLETED', 'Consulting Fee', 5.00, 10000.00, 5.00, NOW(), NOW());
--
-- -- Deposit to Rohit
-- INSERT INTO transactions (id, transaction_reference, from_account_id, amount, transaction_type, status, description, fee_amount, net_amount, total_charges, transaction_date, created_at)
-- VALUES (502, 'TXN-502-REF', 501, 50000.00, 'DEPOSIT', 'COMPLETED', 'Cash Deposit', 0.00, 50000.00, 0.00, NOW(), NOW());
--
-- -- Withdrawal by Priya
-- INSERT INTO transactions (id, transaction_reference, from_account_id, amount, transaction_type, status, description, fee_amount, net_amount, total_charges, transaction_date, created_at)
-- VALUES (503, 'TXN-503-REF', 502, 2000.00, 'WITHDRAWAL', 'COMPLETED', 'ATM Withdrawal', 0.00, 2000.00, 0.00, NOW(), NOW());
--
--
--
-- ----- headbankamdin testing
-- -- =================================================================================
-- -- HEAD BANK ADMIN TESTING DATA (MySQL Compatible)
-- -- Focus: Head Bank Earnings, Charges, and Global Stats
-- -- Head Bank ID: 1 (State Bank of India)
-- -- =================================================================================
--
-- -- 1. CONFIGURE HEAD BANK CHARGES (If not already present)
-- -- =======================================================
-- INSERT INTO charges_book (id, fee_name, fee_amount, bank_id, bank_type, transaction_type, min_value, max_value, is_active, created_at, updated_at)
-- VALUES (1001, 'Inter-Branch Processing Fee', 15.00, 1, 'HEAD_BANK', 'TRANSFER', 0, 1000000, true, NOW(), NOW());
--
-- INSERT INTO charges_book (id, fee_name, fee_amount, bank_id, bank_type, transaction_type, min_value, max_value, is_active, created_at, updated_at)
-- VALUES (1002, 'High Value Transaction Levy', 50.00, 1, 'HEAD_BANK', 'TRANSFER', 100000, 99999999, true, NOW(), NOW());
--
--
-- -- 2. POPULATE TRANSACTIONS (High Value)
-- -- =======================================================
-- -- Transaction 1: Large Transfer (Recent)
-- INSERT INTO transactions (id, transaction_reference, from_account_id, to_account_id, amount, transaction_type, status, description, fee_amount, net_amount, total_charges, transaction_date, created_at)
-- VALUES (6001, 'HB-TXN-HV-001', 501, 502, 250000.00, 'TRANSFER', 'COMPLETED', 'Business Settlement', 50.00, 250000.00, 50.00, NOW(), NOW());
--
-- -- Transaction 2: Another Transfer (2 Days Ago) -> FIXED SYNTAX
-- INSERT INTO transactions (id, transaction_reference, from_account_id, to_account_id, amount, transaction_type, status, description, fee_amount, net_amount, total_charges, transaction_date, created_at)
-- VALUES (6002, 'HB-TXN-HV-002', 502, 501, 120000.00, 'TRANSFER', 'COMPLETED', 'Asset Purchase', 50.00, 120000.00, 50.00, DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_SUB(NOW(), INTERVAL 2 DAY));
--
--
-- -- 3. POPULATE CHARGES TABLE (Revenue for Head Bank)
-- -- =======================================================
-- -- Charge for Transaction 6001 (Now)
-- INSERT INTO charges (id, fee_name, bank_type, charged_amount, bank_id, transaction_id, created_at)
-- VALUES (7001, 'High Value Transaction Levy', 'HEAD_BANK', 50.00, 1, 6001, NOW());
--
-- -- Charge for Transaction 6002 (2 Days Ago) -> FIXED SYNTAX
-- INSERT INTO charges (id, fee_name, bank_type, charged_amount, bank_id, transaction_id, created_at)
-- VALUES (7002, 'High Value Transaction Levy', 'HEAD_BANK', 50.00, 1, 6002, DATE_SUB(NOW(), INTERVAL 2 DAY));
--
-- -- Manual/System Charges (1 Month Ago) -> FIXED SYNTAX
-- INSERT INTO charges (id, fee_name, bank_type, charged_amount, bank_id, created_at)
-- VALUES (7003, 'Branch Licensing Fee - CP', 'HEAD_BANK', 5000.00, 1, DATE_SUB(NOW(), INTERVAL 1 MONTH));
--
-- INSERT INTO charges (id, fee_name, bank_type, charged_amount, bank_id, created_at)
-- VALUES (7004, 'Branch Licensing Fee - Indiranagar', 'HEAD_BANK', 5000.00, 1, DATE_SUB(NOW(), INTERVAL 1 MONTH));
--
-- -- Older Data for "Last Year" reports (1 Year Ago) -> FIXED SYNTAX
-- INSERT INTO charges (id, fee_name, bank_type, charged_amount, bank_id, created_at)
-- VALUES (7005, 'Annual Compliance Fee', 'HEAD_BANK', 12000.00, 1, DATE_SUB(NOW(), INTERVAL 1 YEAR));
--
--
-- -- 4. UPDATE HEAD BANK TOTAL EARNINGS
-- -- =======================================================
-- UPDATE head_bank
-- SET total_earning = 22100.00
-- WHERE id = 1;




-- =================================================================================
-- ENTERPRISE DATA SEED: SOLID SLATE & PURPLE BANKING SYSTEM
-- Hierarchy: 1 Central -> 3 Head Banks -> 6 Branches -> 12 Staff -> 12 Customers
-- Password: password123 (BCrypt Hash applied)
-- =================================================================================

-- =======================================================
-- 1. SYSTEM USERS (Authentication & Role Mapping)
-- IDs: 1 (Central), 2-4 (Head), 11-16 (Managers), 21-26 (Tellers), 101-112 (Customers)
-- =======================================================
INSERT INTO users (id, username, password, role) VALUES
                                                     (1, 'superadmin', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'CENTRALADMIN'),
                                                     (2, 'admin_sbi', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'HEADMANAGER'),
                                                     (3, 'admin_hdfc', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'HEADMANAGER'),
                                                     (4, 'admin_icici', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'HEADMANAGER'),
                                                     (11, 'mgr_sbi_cp', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'BRANCHMANAGER'),
                                                     (12, 'mgr_sbi_aw', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'BRANCHMANAGER'),
                                                     (13, 'mgr_hdfc_in', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'BRANCHMANAGER'),
                                                     (14, 'mgr_hdfc_noi', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'BRANCHMANAGER'),
                                                     (15, 'mgr_icici_pun', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'BRANCHMANAGER'),
                                                     (16, 'mgr_icici_che', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'BRANCHMANAGER'),
                                                     (21, 'tell_sbi_01', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'TELLER'),
                                                     (22, 'tell_sbi_02', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'TELLER'),
                                                     (23, 'tell_hdfc_01', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'TELLER'),
                                                     (24, 'tell_hdfc_02', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'TELLER'),
                                                     (25, 'tell_icici_01', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'TELLER'),
                                                     (26, 'tell_icici_02', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'TELLER'),
                                                     (101, 'alice_wonder', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'CUSTOMER'),
                                                     (102, 'bob_builder', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'CUSTOMER'),
                                                     (103, 'charlie_chap', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'CUSTOMER'),
                                                     (104, 'david_goggins', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'CUSTOMER'),
                                                     (105, 'elon_musk', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'CUSTOMER'),
                                                     (106, 'frank_castle', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'CUSTOMER'),
                                                     (107, 'grace_hopper', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'CUSTOMER'),
                                                     (108, 'hank_pym', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'CUSTOMER'),
                                                     (109, 'ivan_drago', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'CUSTOMER'),
                                                     (110, 'john_wick', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'CUSTOMER'),
                                                     (111, 'karl_marx', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'CUSTOMER'),
                                                     (112, 'lara_croft', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'CUSTOMER');

-- =======================================================
-- 2. BANK STRUCTURE (Central -> Head -> Branch)
-- =======================================================
INSERT INTO central_bank (id, name, code, address, contact_email, total_earning, created_at)
VALUES (1, 'Reserve Bank of India', 'RBI-IN', 'Mumbai HQ', 'governor@rbi.org.in', 100000.00, NOW());

INSERT INTO central_bank_admin (id, full_name, username, email, password_hash, role, central_bank_id, user_id)
VALUES (1, 'Central Governor', 'superadmin', 'gov@rbi.org.in', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2', 'central_admin', 1, 1);

INSERT INTO head_bank (id, name, code, routing_number, central_bank_id, total_earning, is_active) VALUES
                                                                                                      (1, 'State Bank of India', 'SBI', 'RT-SBI-001', 1, 55000.00, true),
                                                                                                      (2, 'HDFC Bank', 'HDFC', 'RT-HDFC-001', 1, 42000.00, true),
                                                                                                      (3, 'ICICI Bank', 'ICICI', 'RT-ICICI-001', 1, 38000.00, true);

INSERT INTO head_bank_admin (id, full_name, username, email, head_bank_id, user_id, password_hash) VALUES
                                                                                                       (1, 'SBI HQ Admin', 'admin_sbi', 'sbi_hq@sbi.com', 1, 2, '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2'),
                                                                                                       (2, 'HDFC HQ Admin', 'admin_hdfc', 'hdfc_hq@hdfc.com', 2, 3, '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2'),
                                                                                                       (3, 'ICICI HQ Admin', 'admin_icici', 'icici_hq@icici.com', 3, 4, '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2');

INSERT INTO branch (id, name, branch_code, ifsc_code, head_bank_id, total_earning) VALUES
                                                                                       (1, 'SBI Connaught Place', 'SBI-CP', 'SBIN0001', 1, 5000.00),
                                                                                       (2, 'SBI Andheri West', 'SBI-AW', 'SBIN0002', 1, 3500.00),
                                                                                       (3, 'HDFC Indiranagar', 'HDFC-IN', 'HDFC0001', 2, 4500.00),
                                                                                       (4, 'HDFC Noida Sec 18', 'HDFC-NOI', 'HDFC0002', 2, 2200.00),
                                                                                       (5, 'ICICI Pune East', 'ICICI-PUN', 'ICIC0001', 3, 3100.00),
                                                                                       (6, 'ICICI Chennai Main', 'ICICI-CHE', 'ICIC0002', 3, 1500.00);

-- =======================================================
-- 3. STAFF (Managers & Tellers per Branch)
-- =======================================================
INSERT INTO branch_manager (id, full_name, username, email, branch_id, user_id, password_hash) VALUES
                                                                                                   (1, 'Sagar Delhi', 'mgr_sbi_cp', 'cp@sbi.com', 1, 11, '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2'),
                                                                                                   (2, 'Amit Mumbai', 'mgr_sbi_aw', 'aw@sbi.com', 2, 12, '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2'),
                                                                                                   (3, 'Priya Bangalore', 'mgr_hdfc_in', 'in@hdfc.com', 3, 13, '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2'),
                                                                                                   (4, 'Rahul Noida', 'mgr_hdfc_noi', 'noi@hdfc.com', 4, 14, '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2'),
                                                                                                   (5, 'Vikram Pune', 'mgr_icici_pun', 'pun@icici.com', 5, 15, '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2'),
                                                                                                   (6, 'Anjali Chennai', 'mgr_icici_che', 'che@icici.com', 6, 16, '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2');

INSERT INTO teller (id, full_name, username, email, branch_id, user_id, teller_account_id, teller_account_number, password_hash) VALUES
                                                                                                                                     (1, 'T-Delhi-1', 'tell_sbi_01', 't1@sbi.com', 1, 21, 901, 'T-SBI-CP-01', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2'),
                                                                                                                                     (2, 'T-Mumbai-1', 'tell_sbi_02', 't2@sbi.com', 2, 22, 902, 'T-SBI-AW-01', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2'),
                                                                                                                                     (3, 'T-Bang-1', 'tell_hdfc_01', 't3@hdfc.com', 3, 23, 903, 'T-HDFC-IN-01', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2'),
                                                                                                                                     (4, 'T-Noida-1', 'tell_hdfc_02', 't4@hdfc.com', 4, 24, 904, 'T-HDFC-NOI-01', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2'),
                                                                                                                                     (5, 'T-Pune-1', 'tell_icici_01', 't5@icici.com', 5, 25, 905, 'T-ICICI-PUN-01', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2'),
                                                                                                                                     (6, 'T-Chen-1', 'tell_icici_02', 't6@icici.com', 6, 26, 906, 'T-ICICI-CHE-01', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2');

-- =======================================================
-- 4. CUSTOMERS & ACCOUNTS (High Cardinality)
-- =======================================================
INSERT INTO customer (id, customer_id, first_name, last_name, branch_id, user_id, aadhar_number, pan_number, transaction_pin_hash) VALUES
                                                                                                                                       (1, 'C101', 'Alice', 'Wonderland', 1, 101, '111122223333', 'PAN101', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2'),
                                                                                                                                       (2, 'C102', 'Bob', 'Builder', 1, 102, '444455556666', 'PAN102', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2'),
                                                                                                                                       (3, 'C103', 'Charlie', 'Chaplin', 2, 103, '777788889999', 'PAN103', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2'),
                                                                                                                                       (4, 'C104', 'David', 'Goggins', 3, 104, '101010101010', 'PAN104', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2'),
                                                                                                                                       (5, 'C105', 'Elon', 'Musk', 3, 105, '121212121212', 'PAN105', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2'),
                                                                                                                                       (6, 'C106', 'Frank', 'Castle', 4, 106, '131313131313', 'PAN106', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2'),
                                                                                                                                       (7, 'C107', 'Grace', 'Hopper', 5, 107, '141414141414', 'PAN107', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2'),
                                                                                                                                       (8, 'C108', 'Hank', 'Pym', 5, 108, '151515151515', 'PAN108', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2'),
                                                                                                                                       (9, 'C109', 'Ivan', 'Drago', 6, 109, '161616161616', 'PAN109', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2'),
                                                                                                                                       (10, 'C110', 'John', 'Wick', 2, 110, '171717171717', 'PAN110', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2'),
                                                                                                                                       (11, 'C111', 'Karl', 'Marx', 4, 111, '181818181818', 'PAN111', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2'),
                                                                                                                                       (12, 'C112', 'Lara', 'Croft', 6, 112, '191919191919', 'PAN112', '$2a$10$GlkVuX7F0T2yZQfD/K9H/uNBX7key//aczyVOiv4Zzo0HbkL.ztO2');

INSERT INTO account (id, account_number, account_type, current_balance, available_balance, customer_id, branch_id, status) VALUES
                                                                                                                               (1, 'SBI-101-SAV', 'SAVINGS', 50000.00, 50000.00, 1, 1, 'ACTIVE'),
                                                                                                                               (2, 'SBI-101-CUR', 'CURRENT', 10000.00, 10000.00, 1, 1, 'ACTIVE'),
                                                                                                                               (3, 'SBI-102-SAV', 'SAVINGS', 2500.00, 2500.00, 2, 1, 'ACTIVE'),
                                                                                                                               (4, 'SBI-103-SAV', 'SAVINGS', 15000.00, 15000.00, 3, 2, 'ACTIVE'),
                                                                                                                               (5, 'HDFC-104-SAV', 'SAVINGS', 99000.00, 99000.00, 4, 3, 'ACTIVE'),
                                                                                                                               (6, 'HDFC-105-CUR', 'CURRENT', 500000.0, 500000.0, 5, 3, 'FROZEN'),
                                                                                                                               (7, 'HDFC-106-SAV', 'SAVINGS', 1200.00, 1200.00, 6, 4, 'ACTIVE'),
                                                                                                                               (8, 'ICICI-107-SAV', 'SAVINGS', 75000.00, 75000.00, 7, 5, 'ACTIVE'),
                                                                                                                               (9, 'ICICI-108-CUR', 'CURRENT', 400.00, 400.00, 8, 5, 'INACTIVE'),
                                                                                                                               (10, 'ICICI-109-SAV', 'SAVINGS', 21000.00, 21000.00, 9, 6, 'ACTIVE'),
                                                                                                                               (11, 'SBI-110-SAV', 'SAVINGS', 8800.00, 8800.00, 10, 2, 'ACTIVE'),
                                                                                                                               (12, 'HDFC-111-SAV', 'SAVINGS', 45000.00, 45000.00, 11, 4, 'ACTIVE'),
                                                                                                                               (13, 'ICICI-112-SAV', 'SAVINGS', 100.00, 100.00, 12, 6, 'ACTIVE');

-- =======================================================
-- 5. SERVICE ARTIFACTS (Cards, Loans, Cheques)
-- =======================================================
-- Rules First
INSERT INTO debit_card_rules (id, card_type, daily_withdrawal_limit, daily_transaction_limit, annual_fee, head_bank_id) VALUES
                                                                                                                            (1, 'VISA_PLATINUM', 100000, 500000, 1500, 1),
                                                                                                                            (2, 'MASTERCARD_GOLD', 50000, 200000, 500, 2),
                                                                                                                            (3, 'RUPAY_CLASSIC', 20000, 50000, 0, 3);

-- Active Cards
INSERT INTO debit_card (id, card_number, cvv, expiry_date, is_active, account_id, card_rules_id) VALUES
                                                                                                     (1, '4111222233334444', '123', '2028-12-01 00:00:00', true, 1, 1),
                                                                                                     (2, '5222333344445555', '456', '2027-06-01 00:00:00', true, 5, 2),
                                                                                                     (3, '6333444455556666', '789', '2029-01-01 00:00:00', true, 8, 3);

-- Active Loans
INSERT INTO loan_offers (id, offer_name, loan_type, interest_rate, min_amount, max_amount, head_bank_id) VALUES
                                                                                                             (1, 'SBI Express Personal', 'PERSONAL', 10.5, 50000, 1000000, 1),
                                                                                                             (2, 'HDFC Dream Home', 'HOME', 8.5, 1000000, 50000000, 2),
                                                                                                             (3, 'ICICI Auto Flex', 'CAR', 9.2, 200000, 3000000, 3);

INSERT INTO loan_account (id, loan_amount, interest_rate, tenure_months, account_id, loan_offer_id, status) VALUES
                                                                                                                (1, 500000, 10.5, 36, 1, 1, 'ACTIVE'),
                                                                                                                (2, 2500000, 8.5, 120, 5, 2, 'ACTIVE');

-- =======================================================
-- 6. PENDING QUEUE (For Dashboard Testing)
-- =======================================================
-- Tellers (Pending Accounts/Cards/Cheques)
INSERT INTO account_request (id, customer_id, branch_id, account_type, status, created_at) VALUES
                                                                                               (10, 2, 1, 'CURRENT', 'PENDING', NOW()),
                                                                                               (11, 4, 3, 'SAVINGS', 'PENDING', NOW()),
                                                                                               (12, 10, 2, 'CURRENT', 'PENDING', NOW());

INSERT INTO card_request (id, requested_by, account_id, card_type, status, created_at) VALUES
                                                                                           (10, 1, 2, 'VISA_PLATINUM', 'PENDING', NOW()),
                                                                                           (11, 7, 8, 'RUPAY_CLASSIC', 'PENDING', NOW());

INSERT INTO cheque_book_request (id, requested_by, account_id, number_of_leaves, status, created_at) VALUES
                                                                                                         (10, 3, 4, 50, 'PENDING', NOW()),
                                                                                                         (11, 12, 13, 25, 'PENDING', NOW());

-- Managers (Pending Loans)
INSERT INTO loan_application (id, customer_id, loan_offer_id, requested_amount, requested_tenure_months, purpose, status, created_at) VALUES
                                                                                                                                          (10, 1, 3, 800000, 48, 'Buying an SUV', 'PENDING', NOW()),
                                                                                                                                          (11, 6, 2, 4500000, 180, 'Apartment in Delhi', 'PENDING', NOW()),
                                                                                                                                          (12, 8, 1, 150000, 12, 'Wedding expenses', 'PENDING', NOW());

-- =======================================================
-- 7. RECENT LEDGER (Analytics History)
-- =======================================================
INSERT INTO transactions (id, transaction_reference, from_account_id, to_account_id, amount, transaction_type, status, total_charges, net_amount, transaction_date) VALUES
                                                                                                                                                                        (1001, 'TXN-001', 1, 5, 5000.00, 'TRANSFER', 'COMPLETED', 20.00, 5000.00, NOW()),
                                                                                                                                                                        (1002, 'TXN-002', 8, 1, 2000.00, 'TRANSFER', 'COMPLETED', 10.00, 2000.00, NOW()),
                                                                                                                                                                        (1003, 'TXN-003', 5, 1, 1000.00, 'BILL_PAYMENT', 'COMPLETED', 5.00, 1000.00, NOW());

INSERT INTO charges (id, fee_name, bank_type, charged_amount, bank_id, transaction_id) VALUES
                                                                                           (1001, 'Intra-Bank Fee', 'HEAD_BANK', 10.00, 1, 1001),
                                                                                           (1002, 'Central Levy', 'CENTRAL_BANK', 5.00, 1, 1001),
                                                                                           (1003, 'Branch Service', 'BANK_BRANCH', 5.00, 1, 1001);



-- Create System Accounts for Tellers so they can process Cash
INSERT INTO account (id, account_number, account_type, current_balance, available_balance, currency, status, account_holder_type, branch_id, opened_date) VALUES
                                                                                                                                                              (901, 'T-SBI-CP-01', 'CURRENT', 1000000.00, 1000000.00, 'INR', 'ACTIVE', 'TELLER', 1, NOW()),
                                                                                                                                                              (902, 'T-SBI-AW-01', 'CURRENT', 1000000.00, 1000000.00, 'INR', 'ACTIVE', 'TELLER', 2, NOW()),
                                                                                                                                                              (903, 'T-HDFC-IN-01', 'CURRENT', 1000000.00, 1000000.00, 'INR', 'ACTIVE', 'TELLER', 3, NOW());

-- Ensure the Teller entity points to the correct ID
UPDATE teller SET teller_account_id = 901 WHERE id = 1;
UPDATE teller SET teller_account_id = 902 WHERE id = 2;
UPDATE teller SET teller_account_id = 903 WHERE id = 3;







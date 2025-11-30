# Assignment 2 – Flutter App UI

This repository contains the solution for **Assignment 2 (Flutter UI)** of the IUB course.  
The task was to build a 4‑page banking application UI using Flutter with a bottom navigation bar and `PageView`.

## Student Information

- **Name:** Samnoon Ahmed  
- **Student ID:** 2022135  
- **Email:** your.iub.email@iub.edu  

## Features

- Bottom navigation bar with 4 tabs (Home, Reports, Cards, Profile).
- **Page 1 – Home:**  
  - Total balance card with savings and last 30 days summary.  
  - Quick action buttons (Transfer, Pay Bills, Invest).  
  - Recent transactions list with colored amounts.

- **Page 2 – Reports:**  
  - Monthly spending report card with total expenses.  
  - Spending breakdown using progress bars for different categories.

- **Page 3 – Cards:**  
  - Main credit/debit card UI with gradient background.  
  - Card actions (Block, Details, Limit).  
  - Linked accounts section.

- **Page 4 – Profile:**  
  - User avatar with initials.  
  - Cards showing Name, Student ID, Email, and Bio/Story.

## How to Run
flutter pub get
flutter run -d chrome # or any connected emulator/device

## Notes

- UI is implemented to match the provided Figma design with ~80% similarity.  
- Icons and colors are chosen from the default Flutter `Icons` and Material color palette where exact matches were not available.

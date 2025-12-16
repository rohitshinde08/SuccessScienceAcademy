import React from "react";
import { Routes, Route, Navigate } from "react-router-dom";

import LoginPage from "../pages/Login/LoginPage";
import SignupPage from "../pages/Login/SignupPage";
import HomePage from "../pages/Public/HomePage";
import AboutPage from "../pages/Public/AboutPage";
import CoursesPage from "../pages/Public/CoursesPage";
import ContactPage from "../pages/Public/ContactPage";

import ProtectedRoute from "./ProtectedRoute";

import AdminLayout from "../pages/Admin/layouts/AdminLayout";
import AdminDashboard from "../pages/Admin/AdminDashboard";
import AcademicSessionsPage from "../pages/Admin/AcademicSessionsPage";
import AddSubjectPage from "../pages/Admin/AddSubjectPage";
import AddCoursePage from "../pages/Admin/AddCoursePage";
import AddClassPage from "../pages/Admin/AddClassPage";

export default function AppRoutes() {
  return (
    <Routes>
      {/* Public Routes */}
      <Route path="/" element={<HomePage />} />
      <Route path="/about" element={<AboutPage />} />
      <Route path="/courses" element={<CoursesPage />} />
      <Route path="/contact" element={<ContactPage />} />

      {/* Auth Routes */}
      <Route path="/login" element={<LoginPage />} />
      <Route path="/signup" element={<SignupPage />} />

      {/* Admin Protected Routes */}
      <Route
        path="/admin"
        element={
          <ProtectedRoute role="admin">
            <AdminLayout />
          </ProtectedRoute>
        }
      >
        {/* Dashboard */}
        <Route index element={<AdminDashboard />} />
        <Route path="dashboard" element={<AdminDashboard />} />

        {/* Other Admin Pages */}
        <Route path="sessions" element={<AcademicSessionsPage />} />
        <Route path="add-class" element={<AddClassPage />} />
        <Route path="add-course" element={<AddCoursePage />} />
        <Route path="add-subject" element={<AddSubjectPage />} />
      </Route>

      {/* Catch-all */}
      <Route path="*" element={<Navigate to="/login" replace />} />
    </Routes>
  );
}

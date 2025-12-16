import React, { useState } from "react";
import { Outlet } from "react-router-dom";
import AdminSidebar from "./AdminSidebar";
import AdminNavbar from "./AdminNavbar";

export default function AdminLayout() {
  const [menuOpen, setMenuOpen] = useState(false);

  return (
    <div className="h-screen flex flex-col md:flex-row bg-gray-100 overflow-hidden">
      
      {/* Sidebar */}
      <div
        className={`fixed md:static bg-white shadow-md z-50
          w-64 h-screen overflow-y-auto transition-transform duration-300
          ${menuOpen ? "translate-x-0" : "-translate-x-full md:translate-x-0"}`}
      >
        <AdminSidebar />
      </div>

      {/* Right Area */}
      <div className="flex-1 flex flex-col">

        {/* Navbar */}
        <AdminNavbar toggleMenu={() => setMenuOpen(!menuOpen)} />

        {/* Main Content Area — FIXED HEIGHT + INTERNAL SCROLL */}
        <main
          className="p-4 md:p-6 overflow-y-auto"
          style={{ height: "calc(100vh - 64px)" }} // 64px navbar height
        >
          <Outlet />
        </main>
      </div>
    </div>
  );
}
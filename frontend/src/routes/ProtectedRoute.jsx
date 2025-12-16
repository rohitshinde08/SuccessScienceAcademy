import { Navigate } from "react-router-dom";

export default function ProtectedRoute({ children, roles }) {
  const token = localStorage.getItem("token");
  const userRole = localStorage.getItem("role");

  if (!token) return <Navigate to="/login" replace />;

  if (roles && !roles.includes(userRole)) {
    return <Navigate to={`/${userRole}`} replace />; // redirect to correct dashboard
  }

  return children;
}

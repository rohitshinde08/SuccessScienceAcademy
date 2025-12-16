from pydantic import BaseModel
from datetime import date

class TeacherBase(BaseModel):
    full_name: str
    phone: str | None = None

class TeacherCreate(TeacherBase):
    user_id: int

class TeacherResponse(TeacherBase):
    id: int
    hire_date: date

    class Config:
        orm_mode = True

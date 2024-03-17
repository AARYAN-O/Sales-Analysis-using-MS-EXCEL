select 
  department.*, 
  employee.* 
from 
  {{join_macros(
    'first_db', 'public', 'department', 
    'employee', 'deptname', 'department'
  ) }} 
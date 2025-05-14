import 'package:flutter/material.dart';

class RoleSelector extends StatelessWidget {
  final String selectedRole;
  final Function(String) onRoleSelected;

  const RoleSelector({
    super.key,
    required this.selectedRole,
    required this.onRoleSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildRoleButton(context, 'Tenant'),
        const SizedBox(width: 8),
        _buildRoleButton(context, 'Manager'),
        const SizedBox(width: 8),
        _buildRoleButton(context, 'Owner'),
      ],
    );
  }

  Widget _buildRoleButton(BuildContext context, String role) {
    final isSelected = selectedRole == role;
    
    return Expanded(
      child: InkWell(
        onTap: () => onRoleSelected(role),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: isSelected ? Colors.blue : Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              role,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

from django import template

register = template.Library()


@register.filter
def equal_ignore_case(str1, str2):
    return str1.lower() == str2.lower()


@register.filter
def exists(e, element_list):
    return e.lower() in element_list


@register.filter
def get_user_permissions(user):
    if user.is_authenticated:
        user_permissions = user.user_permissions.all()
        code_names = [permission.codename for permission in user_permissions]
        return code_names
    else:
        return []

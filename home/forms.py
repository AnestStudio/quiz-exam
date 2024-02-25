from django import forms
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm, PasswordChangeForm, PasswordResetForm, \
    SetPasswordForm, UsernameField
from django.contrib.auth.models import User
from django.utils.translation import gettext_lazy as _

from home.models import Document


class RegistrationForm(UserCreationForm):
    password1 = forms.CharField(
        widget=forms.PasswordInput(
            attrs={'class': 'form-control', 'placeholder': 'Password'}
        ),
    )
    password2 = forms.CharField(
        widget=forms.PasswordInput(
            attrs={'class': 'form-control', 'placeholder': 'Confirm Password'}
        ),
    )

    class Meta:
        model = User
        fields = ('username', 'email',)

        labels = {
            'username': _('Your Username'),
            'email': _('Your Email'),
        }
        widgets = {
            'username': forms.TextInput(attrs={
                'class': 'form-control',
                'placeholder': 'Tài khoản'
            }),
            'email': forms.EmailInput(attrs={
                'class': 'form-control',
                'placeholder': 'example@company.com'
            })
        }


class UserLoginForm(AuthenticationForm):
    username = UsernameField(widget=forms.TextInput(
        attrs={"class": "form-control", "placeholder": "Tài khoản"})
    )
    password = forms.CharField(
        strip=False,
        widget=forms.PasswordInput(
            attrs={"class": "form-control", "placeholder": "Mật khẩu"}
        ),
    )
    error_messages = {
        'invalid_login': _("Sai tên tài khoản hoặc mật khẩu."),
        'inactive': _("Tài khoản này không hoạt động."),
    }


class UserPasswordResetForm(PasswordResetForm):
    email = forms.EmailField(widget=forms.EmailInput(attrs={
        'class': 'form-control',
        'placeholder': 'Email'
    }), label=_("Your Email"))


class UserSetPasswordForm(SetPasswordForm):
    new_password1 = forms.CharField(max_length=50, widget=forms.PasswordInput(attrs={
        'class': 'form-control', 'placeholder': 'New Password'
    }), label=_("New Password"))
    new_password2 = forms.CharField(max_length=50, widget=forms.PasswordInput(attrs={
        'class': 'form-control', 'placeholder': 'Confirm New Password'
    }), label=_("Confirm New Password"))


class UserPasswordChangeForm(PasswordChangeForm):
    old_password = forms.CharField(max_length=50, widget=forms.PasswordInput(attrs={
        'class': 'form-control', 'placeholder': 'Old Password'
    }), label=_("Old Password"))
    new_password1 = forms.CharField(max_length=50, widget=forms.PasswordInput(attrs={
        'class': 'form-control', 'placeholder': 'New Password'
    }), label=_("New Password"))
    new_password2 = forms.CharField(max_length=50, widget=forms.PasswordInput(attrs={
        'class': 'form-control', 'placeholder': 'Confirm New Password'
    }), label=_("Confirm New Password"))


class DocumentForm(forms.ModelForm):
    class Meta:
        model = Document
        fields = ('file',)

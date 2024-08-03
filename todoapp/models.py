from django.db import models
from django.contrib.auth.models import User
# Create your models here.

class Task(models.Model):
    user = models.ForeignKey(User,on_delete=models.CASCADE , blank= True , null= True)
    title = models.CharField(max_length=200)
    description = models.TextField(null= True , blank= True)
    date = models.DateTimeField(auto_now_add= True)
    status = models.BooleanField(default=False)

    def __str__(self) -> str:
        return self.title
    
    class Meta:
        ordering = ['status']
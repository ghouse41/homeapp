from django.db import models

# Create your models here.
class Herb(models.Model):
    full_name = models.CharField(max_length=50)
    created_at = models.DateTimeField()

    class Meta:
        db_table = 'herb'
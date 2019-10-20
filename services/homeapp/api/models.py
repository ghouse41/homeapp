from django.db import models

# Create your models here.
class Herb(models.Model):
    full_name = models.CharField(max_length=50)
    created_at = models.DateTimeField()

    class Meta:
        db_table = 'herb'

# class Reporter(models.Model):
#     first_name = models.CharField(max_length=30)
#     last_name = models.CharField(max_length=30)
#     email = models.EmailField()

#     def __str__(self):
#         return "%s %s" % (self.first_name, self.last_name)

# class Article(models.Model):
#     headline = models.CharField(max_length=100)
#     pub_date = models.DateField()
#     reporter = models.ForeignKey(Reporter, on_delete=models.CASCADE,related_name='articles')

#     def __str__(self):
#         return self.headline

#     class Meta:
#         ordering = ('headline',)
from django.db import models

# Create your models here.

class Category(models.Model):
    full_name = models.CharField(max_length=50)
    created_at = models.DateTimeField()

    class Meta:
        db_table = 'category'

    def __str__(self):
        return "%s %d" %(self.full_name,self.id)


class Herb(models.Model):
    full_name = models.CharField(max_length=50)
    created_at = models.DateTimeField()
    category = models.ForeignKey(Category, on_delete=models.CASCADE, related_name='herbs')

    class Meta:
        db_table = 'herb'
    
    def __str__(self):
        return "%s %d" %(self.full_name,self.id)

class Leaf(models.Model):
    full_name = models.CharField(max_length=50)
    created_at = models.DateTimeField()
    category = models.ForeignKey(Category, on_delete=models.CASCADE, related_name='leafs')

    class Meta:
        db_table = 'leaf'
    
    def __str__(self):
        return "%s %d" %(self.full_name,self.id)

class Cucumber_Capsicum(models.Model):
    full_name = models.CharField(max_length=50)
    created_at = models.DateTimeField()
    category = models.ForeignKey(Category, on_delete=models.CASCADE, related_name='cucumbers_capsicums')

    class Meta:
        db_table = 'cucumber_capsicum'
    
    def __str__(self):
        return "%s %d" %(self.full_name,self.id)

class Cabbiage_Califlower(models.Model):
    full_name = models.CharField(max_length=50)
    created_at = models.DateTimeField()
    category = models.ForeignKey(Category, on_delete=models.CASCADE, related_name='cabbiages_califlowers')

    class Meta:
        db_table = 'cabbiage_califlower'
    
    def __str__(self):
        return "%s %d" %(self.full_name,self.id)

class Potato_Onion_Tomato(models.Model):
    full_name = models.CharField(max_length=50)
    created_at = models.DateTimeField()
    category = models.ForeignKey(Category, on_delete=models.CASCADE, related_name='potatos_onions_tomatos')

    class Meta:
        db_table = 'potato_onion_tomato'
    
    def __str__(self):
        return "%s %d" %(self.full_name,self.id)

class Root_Vegitables(models.Model):
    full_name = models.CharField(max_length=50)
    created_at = models.DateTimeField()
    category = models.ForeignKey(Category, on_delete=models.CASCADE, related_name='root_vegies')

    class Meta:
        db_table = 'root_vegitables'
    
    def __str__(self):
        return "%s %d" %(self.full_name,self.id)

class Beans_Brinjal(models.Model):
    full_name = models.CharField(max_length=50)
    created_at = models.DateTimeField()
    category = models.ForeignKey(Category, on_delete=models.CASCADE, related_name='beans_brinjals')

    class Meta:
        db_table = 'beans_brinjal'
    
    def __str__(self):
        return "%s %d" %(self.full_name,self.id)

class orders(models.Model):
    vegitable_name = models.CharField(max_length=50)
    price = models.IntegerField()
    vegitable_id = models.IntegerField()
    vegitable_type = models.CharField(max_length=50)
    vegitable_category = models.CharField(max_length=50)
    created_at = models.DateTimeField()
    status = models.IntegerField()
    category = models.ForeignKey(Category, on_delete=models.CASCADE, related_name='orders')

    class Meta:
        db_table = 'orders'
    
    def __str__(self):
        return "%s %d" %(self.full_name,self.id)
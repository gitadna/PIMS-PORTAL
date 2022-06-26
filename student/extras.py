# date = models.DateField(max_length=100)
# languages = models.CharField(max_length=100)
# address = models.CharField(max_length=100)
# phone = models.CharField(max_length=100)
# objective = models.CharField(max_length=500)
# sem1f = models.FileField(upload_to="ygygGYjhd#jdj123", blank=True)
# sem2f = models.FileField(upload_to="ygygGYjhd#jdj123", blank=True)
# diplomaf = models.FileField(upload_to="ygygGYjhd#jdj123", blank=True)
# diploma_inst = models.CharField(max_length=100, null=True)
# diploma_year = models.CharField(max_length=100, null=True)
# sem3f = models.FileField(upload_to="ygygGYjhd#jdj123", blank=True)
# sem4f = models.FileField(upload_to="ygygGYjhd#jdj123", blank=True)
# sem5f = models.ImageField(upload_to="ygygGYjhd#jdj123", blank=True)
# sem6f = models.FileField(upload_to="ygygGYjhd#jdj123", blank=True)
# sem7f = models.FileField(upload_to="ygygGYjhd#jdj123", blank=True)
# sem8f = models.FileField(upload_to="ygygGYjhd#jdj123", blank=True)
# sscf = models.FileField(upload_to="ygygGYjhd#jdj123", blank=True)
# ssc_institute = models.CharField(max_length=200)
# ssc_year = models.CharField(max_length=100)
# hscf = models.FileField(upload_to="ygygGYjhd#jdj123", blank=True)
# hsc_institute = models.CharField(max_length=300, null=True)
# hsc_year = models.CharField(max_length=100, null=True)
# be_proj = models.CharField(max_length=500)
# te_proj = models.CharField(max_length=500)
# tech_prof = models.CharField(max_length=500)
# awards = models.CharField(max_length=500)
# hobbies = models.CharField(max_length=500)
# oneto6 = models.CharField(max_length=500)
# dream = models.CharField(max_length=500)
# {% for eligible in eligibles %}
#             <p>{{eligible.stud_user}}</p>
#           {%endfor%}
# {% if no_response %}
#             <p>No Student responded.</p>
#             {%endif%}
#             {% else %}
#             <p>No student eligible.</p>
#             {% endif %}
# {% if eligibles.len > 0 %}
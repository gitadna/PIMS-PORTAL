from itertools import chain
import string
import random
from io import BytesIO as IO
from urllib import response
from django.views.decorators.cache import never_cache
from django.core.mail import send_mail, EmailMessage
from django.http import HttpResponseRedirect, HttpResponse
import csv
from django.shortcuts import render
from django.template.loader import get_template
from pandas.io.sas.sas_constants import magic
import openpyxl
from xhtml2pdf import pisa
import datetime
from student.models import User
# Create your views here.
from student.utils import render_to_pdf
from tnp_admin.models import Admin, StudentsEligible, StudentPlaced,mailResponse
from tnp_admin.models import Company
from secrets import token_urlsafe
from student.models import Resume
import urllib.parse
import pandas as pd

@never_cache
def dashboard(request):
    if not request.session.get('admin_login'):
        return HttpResponseRedirect("/login/")
    else:
        if (request.session['admin_type'] == 'Super'):
            if request.method == "POST":
                psw = request.POST['psw']
                admin = request.session['admin_username']
                admin_type=request.session['admin_type']
                # ,admin_type=admin_type
                Admin.objects.filter(username=admin,admin_type=admin_type).update(password=psw)
                data = Admin.objects.filter(username=admin,admin_type=admin_type)

                return render(request, 'adminDashb.html', {'data': data, 'msg': "Password Updated.",admin_type:'super'})
            else:
                admin = request.session['admin_username']
                admin_type=request.session['admin_type']

                # admin_type=request.session['admin_type'],admin_type=admin_type
                data = Admin.objects.filter(username=admin,admin_type=admin_type)
                # dir(data)
                # print(data)
                return render(request, 'adminDashb.html', {'data': data})
        elif (request.session['admin_type'] == 'Information Technology'):
            if request.method == "POST":
                psw = request.POST['psw']
                admin = request.session['admin_username']
                admin_type=request.session['admin_type']
                # ,admin_type=admin_type

                Admin.objects.filter(username=admin,admin_type=admin_type).update(password=psw)
                data = Admin.objects.filter(username=admin,admin_type=admin_type)

                return render(request, 'adminDashb.html', {'data': data, 'msg': "Password Updated."})
            else:
                admin = request.session['admin_username']
                admin_type=request.session['admin_type']

                # admin_type=request.session['admin_type'],admin_type=admin_type
                data = Admin.objects.filter(username=admin,admin_type=admin_type)
                # dir(data)
                # print(data)
                return render(request, 'adminDashb.html', {'data': data})
        elif (request.session['admin_type'] == 'Computer'):
            if request.method == "POST":
                psw = request.POST['psw']
                admin = request.session['admin_username']
                admin_type=request.session['admin_type']
                # ,admin_type=admin_type

                Admin.objects.filter(username=admin,admin_type=admin_type).update(password=psw)
                data = Admin.objects.filter(username=admin,admin_type=admin_type)

                return render(request, 'adminDashb.html', {'data': data, 'msg': "Password Updated."})
            else:
                admin = request.session['admin_username']
                admin_type=request.session['admin_type']

                # admin_type=request.session['admin_type'],admin_type=admin_type
                data = Admin.objects.filter(username=admin,admin_type=admin_type)
                # dir(data)
                # print(data)
                return render(request, 'adminDashb.html', {'data': data})
        elif (request.session['admin_type'] == 'Electronics & Telecommunication'):
            if request.method == "POST":
                psw = request.POST['psw']
                admin = request.session['admin_username']
                admin_type=request.session['admin_type']
                # ,admin_type=admin_type

                Admin.objects.filter(username=admin,admin_type=admin_type).update(password=psw)
                data = Admin.objects.filter(username=admin,admin_type=admin_type)

                return render(request, 'adminDashb.html', {'data': data, 'msg': "Password Updated."})
            else:
                admin = request.session['admin_username']
                admin_type=request.session['admin_type']

                # admin_type=request.session['admin_type'],admin_type=admin_type
                data = Admin.objects.filter(username=admin,admin_type=admin_type)
                # dir(data)
                # print(data)
                return render(request, 'adminDashb.html', {'data': data})
        elif (request.session['admin_type'] == 'Electronics'):
            if request.method == "POST":
                psw = request.POST['psw']
                admin = request.session['admin_username']
                admin_type=request.session['admin_type']
                # ,admin_type=admin_type

                Admin.objects.filter(username=admin,admin_type=admin_type).update(password=psw)
                data = Admin.objects.filter(username=admin,admin_type=admin_type)

                return render(request, 'adminDashb.html', {'data': data, 'msg': "Password Updated."})
            else:
                admin = request.session['admin_username']
                admin_type=request.session['admin_type']

                # admin_type=request.session['admin_type'],admin_type=admin_type
                data = Admin.objects.filter(username=admin,admin_type=admin_type)
                # dir(data)
                # print(data)
                return render(request, 'adminDashb.html', {'data': data})


@never_cache
def display(request):
    if not request.session.get('admin_login'):
        return HttpResponseRedirect("/login/")
    else:
        admin_types=request.session.get('admin_type')
        if (admin_types=="Super"):
            resumes = Resume.objects.all()
            users = User.objects.all()
            temp = []
            if resumes.count() > 0 or users.count() > 0:
                for user in users:
                    flag = 0
                    for resume in resumes:
                        if user.username == resume.user:
                            flag = 0
                            break
                        else:
                            flag = 1
                    if flag == 1:
                        temp.append(user.username)
                    else:
                        pass
                return render(request, 'display_student.html', {'userDetails': resumes, 'temp': temp, 'users': users})
            elif resumes.count() == 0:
                return render(request, 'display_student.html', {'users': users, 'userDetails': resumes})
            else:
                return render(request, 'display_student.html')
        if (admin_types=="Information Technology"):
            resumes = Resume.objects.filter(branch=admin_types)
            users = User.objects.filter(branch=admin_types)
            temp = []
            if resumes.count() > 0 or users.count() > 0:
                for user in users:
                    flag = 0
                    for resume in resumes:
                        if user.username == resume.user:
                            flag = 0
                            break
                        else:
                            flag = 1
                    if flag == 1:
                        temp.append(user.username)
                    else:
                        pass
                return render(request, 'display_student.html', {'userDetails': resumes, 'temp': temp, 'users': users})
            elif resumes.count() == 0:
                return render(request, 'display_student.html', {'users': users, 'userDetails': resumes})
            else:
                return render(request, 'display_student.html')
        if (admin_types=="Computer"):
            resumes = Resume.objects.filter(branch=admin_types)
            users = User.objects.filter(branch=admin_types)
            temp = []
            if resumes.count() > 0 or users.count() > 0:
                for user in users:
                    flag = 0
                    for resume in resumes:
                        if user.username == resume.user:
                            flag = 0
                            break
                        else:
                            flag = 1
                    if flag == 1:
                        temp.append(user.username)
                    else:
                        pass
                return render(request, 'display_student.html', {'userDetails': resumes, 'temp': temp, 'users': users})
            elif resumes.count() == 0:
                return render(request, 'display_student.html', {'users': users, 'userDetails': resumes})
            else:
                return render(request, 'display_student.html')
        if (admin_types=="Electronics & Telecommunication"):
            resumes = Resume.objects.filter(branch=admin_types)
            users = User.objects.filter(branch=admin_types)
            temp = []
            if resumes.count() > 0 or users.count() > 0:
                for user in users:
                    flag = 0
                    for resume in resumes:
                        if user.username == resume.user:
                            flag = 0
                            break
                        else:
                            flag = 1
                    if flag == 1:
                        temp.append(user.username)
                    else:
                        pass
                return render(request, 'display_student.html', {'userDetails': resumes, 'temp': temp, 'users': users})
            elif resumes.count() == 0:
                return render(request, 'display_student.html', {'users': users, 'userDetails': resumes})
            else:
                return render(request, 'display_student.html')
        if (admin_types=="Electronics"):
            resumes = Resume.objects.filter(branch=admin_types)
            users = User.objects.filter(branch=admin_types)
            temp = []
            if resumes.count() > 0 or users.count() > 0:
                for user in users:
                    flag = 0
                    for resume in resumes:
                        if user.username == resume.user:
                            flag = 0
                            break
                        else:
                            flag = 1
                    if flag == 1:
                        temp.append(user.username)
                    else:
                        pass
                return render(request, 'display_student.html', {'userDetails': resumes, 'temp': temp, 'users': users})
            elif resumes.count() == 0:
                return render(request, 'display_student.html', {'users': users, 'userDetails': resumes})
            else:
                return render(request, 'display_student.html')


@never_cache
def add_admin(request):
    if not request.session.get('admin_login'):
        return HttpResponseRedirect("/login/")
    else:
        if request.method == "POST":
            name = request.POST['name']
            username = request.POST['uname'].strip()
            password = str(''.join(random.choices(string.ascii_uppercase +
                                string.digits, k = 8)))
            branch = request.POST['branch']
            admin_type=request.POST['branch']

            check = Admin.objects.filter(username=username)
            if check:
                msg = {
                        'invalidate': "User already exists."
                }
                return render(request, 'add_admin.html', msg)
            else:
                addUser = Admin(username=username, password=password, dept=branch, role="TNP Admin", name=name,admin_type=admin_type)
                addUser.save()
                # send_mail(
                #     'Welcome to Placement Information Portal \n Login http://tnpportal.kjsieit.in/',
                #     'Id: ' + username + '\nPassword: ' + password + '.',
                #     'tnpportal7@gmail.com',
                #      [username],
                #      fail_silently=False,
                #  )
                email_boby = """
                <html>
                <body>
                    <h2>Welcome To Placement Information Portal Admin of department %s</h2>
                <p>Follow up is the credentials for login in to PIMS Portal </p>
                <p><strong>Username:</strong> %s</p>
                <p><strong>password:</strong> %s</p>
                <p>Link of the website is <a href="http://tnpportal.kjsieit.in/">Pims Portal</a>

                </body>
                </html>
                """%(admin_type,username,password)
                
                email = EmailMessage('Placement',email_boby,"tnpportal7@gmail.com",[username])
                email.content_subtype = 'html'
                email.send()
                msg = {
                    'validate': "Added successfully."
                }
                return render(request, 'add_admin.html', msg)
        else:
            msg={
                'validate': "Add Admin"
            }
            return render(request, 'add_admin.html',msg)
        # else:
        #     msg={
        #         'validate' : "You cannot add admin."
        #     }
        #     return render(request, 'add_admin.html', msg)


@never_cache
def add_user(request):
    if not request.session.get('admin_login'):
        return HttpResponseRedirect("/login/")
    else:
        if request.method == "POST":
            name = request.POST['name']
            username = request.POST['uname'].strip()
            password = str(''.join(random.choices(string.ascii_uppercase +
                             string.digits, k = 8)))
            # password = request.POST['psw']
            branch = request.POST['branch']

            check = User.objects.filter(username=username)
            if check:
                msg = {
                    'invalidate': "User already exists."
                }
                return render(request, 'add_student.html', msg)
                # return HttpResponseRedirect('/tnp_admin/add_user')
                # print("Username already exists")
            else:
                addUser = User(name=name, username=username, password=password, branch=branch)
                addUser.save()
                # send_mail(
                #      'Placement Portal',
                #      'Id: ' + username + '\nPassword: ' + password + '.',
                #      'tnpportal7@gmail.com',
                #      [username],
                #      fail_silently=False,
                #  )
                email_boby = """
                <html>
                <body>
                    <h2>Welcome To Placement Information Portal Students</h2>
                <p>Follow up is the credentials for login in to PIMS Portal </p><br>
                <p>Link of the website is <a href="http://tnpportal.kjsieit.in/">Pims Portal</a>
                <p><strong>Username:</strong> %s</p>
                <p><strong>password:</strong> %s</p><br>
                </body>
                </html>
                """%(username,password)
                
                email = EmailMessage('Placement',email_boby,"tnpportal7@gmail.com",[username])
                email.content_subtype = 'html'
                email.send()
                msg = {
                    'validate': "Added successfully."
                }
                return render(request, 'add_student.html', msg)
        else:
            return render(request, 'add_student.html')


@never_cache
def add_company(request):
    if not request.session.get('admin_login'):
        return HttpResponseRedirect("/login/")
    else:
        if request.method == "POST":
            types=request.session.get('admin_type')
            c_name = request.POST['c_name'].strip()
            compCheck = Company.objects.filter(comp_name=c_name)

            if not compCheck.exists():
                c_profile = request.POST['c_profile']
                ctc = request.POST['ctc']
                eligible = request.POST['eligible']
                bond = request.POST['bond']
                date = request.POST['date']
                time = request.POST['time']
                venue = request.POST['venue']
                branch = request.POST.getlist('branch')
                instruction = request.POST['instruction']
                campus = request.POST['campus']

                studentObj = Resume.objects.filter(sperc__gte=eligible, branch__in=branch)

                branch = ','.join(map(str, branch))

                addCompany = Company(comp_name=c_name, comp_profile=c_profile, ctc=ctc, eligibility=eligible, bond=bond,
                                         date=date, time=time, venue=venue, branch=branch, instruction=instruction, campus=campus)
                addCompany.save()

                temp = []

                if studentObj.count() > 0:
                    for student in studentObj:
                        if int(ctc) <= 600000 and student.oneto6 == "":
                            temp.append(student.user)
                        elif int(ctc) > 600000:
                            temp.append(student.user)
                        else:
                            pass
                    return render(request, 'check_eligible.html',
                                  {'temp': temp, 'c_name': c_name, 'studentObj': studentObj})
                else:
                    msg = {
                        'success': "No student eligible."
                    }
                    return render(request, 'add_company.html', msg)
            else:
                msg = {
                    'success': "Company already exists."
                }
                return render(request, 'add_company.html', msg)
        else:
            return render(request, 'add_company.html')


@never_cache
def check_eligible(request):
    if not request.session.get('admin_login'):
        return HttpResponseRedirect("/login/")
    else:
        types=request.session.get('admin_type')
        if (types=="Super"):
            company = request.POST['company']
            student = request.POST['hidden']
            comp = Company.objects.get(comp_name=company)

            print(student)
            stud = student.split(",")
            stud_arr = []

            for temp in stud:
                if temp != "on":
                    user = temp
                    studentObj = Resume.objects.get(user=user)
                    name = studentObj.name
                    branch = studentObj.branch
                    studentEligible = StudentsEligible(stud_user=user, comp_name=comp.comp_name, stud_name=name,
                                                        branch=branch)
                    studentEligible.save()
                    stud_arr.append(temp)
                    current_time = datetime.datetime.now()
                    token = token_urlsafe(16)
                    saveToken = mailResponse(comp_name=comp.comp_name,stud_user=user,token=token,time=current_time, stud_response=0)
                    saveToken.save()
            time = str(comp.time)
            date = str(comp.date)
            email_body = """\
            <html>
            <head></head>
            <body>
                <p>Congratulations. You are eligible for %s.</p>
                <p>Please find below the details for the company.</p>
                <table style="border: 1px solid #dddddd;">
                    <tr>
                        <th style="border: 1px solid #6A6969;">Company Name</th>
                        <td style="border: 1px solid #6A6969;">%s</td>
                    </tr>
                    <tr>
                        <th style="border: 1px solid #6A6969;">Profile</th>
                        <td style="border: 1px solid #6A6969;">%s</td>
                    </tr>
                    <tr>
                        <th style="border: 1px solid #6A6969;">CTC</th>
                        <td style="border: 1px solid #6A6969;">%s</td>
                    </tr>
                    <tr>
                        <th style="border: 1px solid #6A6969;">Branch</th>
                        <td style="border: 1px solid #6A6969;">%s</td>
                    </tr>
                    <tr>
                        <th style="border: 1px solid #6A6969;">Eligibility</th>
                        <td style="border: 1px solid #6A6969;">%s</td>
                    </tr>
                    <tr>
                        <th style="border: 1px solid #6A6969;">Date</th>
                        <td style="border: 1px solid #6A6969;">%s</td>
                    </tr>
                    <tr>
                        <th style="border: 1px solid #6A6969;">Time</th>
                        <td style="border: 1px solid #6A6969;">%s</td>
                    </tr>
                    <tr>
                        <th style="border: 1px solid #6A6969;">Venue</th>
                        <td style="border: 1px solid #6A6969;">%s</td>
                    </tr>
                    <tr>
                        <th style="border: 1px solid #6A6969;">Bond</th>
                        <td style="border: 1px solid #6A6969;">%s</td>
                    </tr>
                    <tr>
                        <th style="border: 1px solid #6A6969;">Instruction</th>
                        <td style="border: 1px solid #6A6969;">%s</td>
                    </tr>
                    <tr>
                        <th style="border: 1px solid #6A6969;">If interested please click the link given</th>
                        <td style="border: 1px solid #6A6969;"><a href="http://127.0.0.1:8000/studentEligibleMark?%s&%s">Click here</a></td>
                    </tr>
                </table>
            </body>
            </html>
            """ % (comp.comp_name, comp.comp_name,comp.comp_profile, comp.ctc, comp.branch, comp.eligibility, comp.date, comp.time, comp.venue, comp.bond, comp.instruction, urllib.parse.urlencode({'token':token}), urllib.parse.urlencode({'stud':user}))
            email = EmailMessage('Placement', email_body, 'tnpportal7@gmail.com', stud_arr)
            email.content_subtype = "html"
            email.send()

            msg = {
                    'success': "Company added and mail sent to eligible students."
                }
            return render(request, 'add_company.html', msg)


@never_cache
def display_company(request):
    if not request.session.get('admin_login', False):
        return HttpResponseRedirect("/login/")
    else:
        types=request.session.get('admin_type')
        if (types=="Super"):
            comp = Company.objects.all().order_by('-id')
            students = StudentsEligible.objects.all()
            for user in students:
                stud_interest = mailResponse.objects.filter(stud_user = user.stud_user)
                for response in stud_interest:
                    # print('response is ',response.stud_response)
                    if (int(response.stud_response) == 1):
                        print('student eligible',response.stud_user)
                        eligible = StudentsEligible.objects.filter(stud_user=response.stud_user)
                    else:
                        eligible = 'nostudents'
            # stud_interest = mailResponse.objects.filter(stud_user = eligible.stud_user)
            if comp.count() > 0:
                return render(request, 'display_company.html', {'comps': comp, 'eligibles': eligible})
            else:
                return render(request, 'display_company.html')
        elif (types=="Information Technology"):
            comp = Company.objects.filter(branch=types).order_by('-id')
            students = StudentsEligible.objects.filter(branch=types)
            for user in students:
                stud_interest = mailResponse.objects.filter(stud_user = user.stud_user)
                for response in stud_interest:
                    # print('response is ',response.stud_response)
                    if (int(response.stud_response) == 1):
                        print('student eligible',response.stud_user)
                        eligible = StudentsEligible.objects.filter(stud_user=response.stud_user)
                    else:
                        eligible = 'nostudents'
            if comp.count() > 0:
                return render(request, 'display_company.html', {'comps': comp, 'eligibles': eligible})
            else:
                return render(request, 'display_company.html')
        elif (types=="Computer"):
            comp = Company.objects.filter(branch=types).order_by('-id')
            students = StudentsEligible.objects.filter(branch=types)
            for user in students:
                stud_interest = mailResponse.objects.filter(stud_user = user.stud_user)
                for response in stud_interest:
                    # print('response is ',response.stud_response)
                    if (int(response.stud_response) == 1):
                        print('student eligible',response.stud_user)
                        eligible = StudentsEligible.objects.filter(stud_user=response.stud_user)
                    else:
                        eligible = 'nostudents'
            if comp.count() > 0:
                return render(request, 'display_company.html', {'comps': comp, 'eligibles': eligible})
            else:
                return render(request, 'display_company.html')
        elif (types=="Electronics & Telecommunication"):
            comp = Company.objects.filter(branch=types).order_by('-id')
            students = StudentsEligible.objects.filter(branch=types)
            for user in students:
                stud_interest = mailResponse.objects.filter(stud_user = user.stud_user)
                for response in stud_interest:
                    # print('response is ',response.stud_response)
                    if (int(response.stud_response) == 1):
                        print('student eligible',response.stud_user)
                        eligible = StudentsEligible.objects.filter(stud_user=response.stud_user)
                    else:
                        eligible = 'nostudents'
            if comp.count() > 0:
                return render(request, 'display_company.html', {'comps': comp, 'eligibles': eligible})
            else:
                return render(request, 'display_company.html')
        elif (types=="Electronics"):
            comp = Company.objects.filter(branch=types).order_by('-id')
            students = StudentsEligible.objects.filter(branch=types)
            for user in students:
                stud_interest = mailResponse.objects.filter(stud_user = user.stud_user)
                for response in stud_interest:
                    # print('response is ',response.stud_response)
                    if (int(response.stud_response) == 1):
                        print('student eligible',response.stud_user)
                        eligible = StudentsEligible.objects.filter(stud_user=response.stud_user)
                    else:
                        eligible = 'nostudents'
            if comp.count() > 0:
                return render(request, 'display_company.html', {'comps': comp, 'eligibles': eligible})
            else:
                return render(request, 'display_company.html')




@never_cache
def student_placed(request):
    if not request.session.get('admin_login'):
        return HttpResponseRedirect("/login/")
    else:
        user = request.GET.get('s')
        company = request.GET.get('c')
        comps = Company.objects.get(comp_name=company)
        student = Resume.objects.get(user=user)
        send_mail(
            'Placement',
            'Congratulations you have been placed in ' + company + '.',
            'tnpportal7@gmail.com',
            [user],
            fail_silently=False
        )
        studentPlaced = StudentPlaced(stud_name=student.name, stud_user=user, branch=student.branch, comp_name=company,
                                      ctc=comps.ctc, id_no=student.number)
        studentPlaced.save()
        resumeUpdate = Resume.objects.get(user=user)
        if comps.ctc < 600000:
            resumeUpdate.oneto6 = company
            resumeUpdate.save()

            eligible_com = Company.objects.filter(ctc__lte=600000)
            eligible_comp = list(eligible_com.values())
            for e in eligible_comp:
                if StudentsEligible.objects.filter(stud_user=user, comp_name=e['comp_name']).exists():
                    elig = StudentsEligible.objects.get(stud_user=user, comp_name=e['comp_name'])
                    elig.delete()
        else:
            resumeUpdate.dream = company
            resumeUpdate.save()

            eligible = StudentsEligible.objects.get(stud_user=user, comp_name=company)
            eligible.delete()
        return HttpResponseRedirect("/tnp_admin/display_company")


@never_cache
def display_placed(request):
    if not request.session.get('admin_login'):
        return HttpResponseRedirect("/login/")
    elif request.method == "POST":
        types = request.session.get('admin_type')
        if 'filter' in request.POST:
            filter = request.POST['filter']
        else:
            filter = False
        if (types == "Super"):
            if filter == "CTC":
                studentPlaced = StudentPlaced.objects.all().order_by('-ctc')
                return render(request, 'placed_student.html', {'placed': studentPlaced, 'filter': filter})
            elif filter == "Branch":
                studentPlaced = StudentPlaced.objects.all().order_by('branch')
                return render(request, 'placed_student.html', {'placed': studentPlaced, 'filter': filter})
            else:
                studentPlaced = StudentPlaced.objects.all().order_by('comp_name')
                return render(request, 'placed_student.html', {'placed': studentPlaced, 'filter': filter})
        if (types == "Information Technology"):
            if filter == "CTC":
                studentPlaced = StudentPlaced.objects.filter(branch=types).order_by('-ctc')
                return render(request, 'placed_student.html', {'placed': studentPlaced, 'filter': filter})
            elif filter == "Branch":
                studentPlaced = StudentPlaced.objects.filter(branch=types).order_by('branch')
                return render(request, 'placed_student.html', {'placed': studentPlaced, 'filter': filter})
            else:
                studentPlaced = StudentPlaced.objects.filter(branch=types).order_by('comp_name')
                return render(request, 'placed_student.html', {'placed': studentPlaced, 'filter': filter})
        if (types == "Computer"):
            # filter = request.POST['filter']
            if filter == "CTC":
                studentPlaced = StudentPlaced.objects.filter(branch=types).order_by('-ctc')
                return render(request, 'placed_student.html', {'placed': studentPlaced, 'filter': filter})
            elif filter == "Branch":
                studentPlaced = StudentPlaced.objects.filter(branch=types).order_by('branch')
                return render(request, 'placed_student.html', {'placed': studentPlaced, 'filter': filter})
            else:
                studentPlaced = StudentPlaced.objects.filter(branch=types).order_by('comp_name')
                return render(request, 'placed_student.html', {'placed': studentPlaced, 'filter': filter})
        if (types == "Electronics & Telecommunication"):
            # filter = request.POST['filter']
            if filter == "CTC":
                studentPlaced = StudentPlaced.objects.filter(branch=types).order_by('-ctc')
                return render(request, 'placed_student.html', {'placed': studentPlaced, 'filter': filter})
            elif filter == "Branch":
                studentPlaced = StudentPlaced.objects.filter(branch=types).order_by('branch')
                return render(request, 'placed_student.html', {'placed': studentPlaced, 'filter': filter})
            else:
                studentPlaced = StudentPlaced.objects.filter(branch=types).order_by('comp_name')
                return render(request, 'placed_student.html', {'placed': studentPlaced, 'filter': filter})
        if (types == "Electronics"):
            # filter = request.POST['filter']
            if filter == "CTC":
                studentPlaced = StudentPlaced.objects.filter(branch=types).order_by('-ctc')
                return render(request, 'placed_student.html', {'placed': studentPlaced, 'filter': filter})
            elif filter == "Branch":
                studentPlaced = StudentPlaced.objects.filter(branch=types).order_by('branch')
                return render(request, 'placed_student.html', {'placed': studentPlaced, 'filter': filter})
            else:
                studentPlaced = StudentPlaced.objects.filter(branch=types).order_by('comp_name')
                return render(request, 'placed_student.html', {'placed': studentPlaced, 'filter': filter})

    else:
        types = request.session.get('admin_type')
        if (types == "Super"):
            studentPlaced = StudentPlaced.objects.all().order_by('comp_name')
            return render(request, 'placed_student.html', {'placed': studentPlaced, 'filter': 'Company'})
        else:
            studentPlaced = StudentPlaced.objects.filter(branch=types).order_by('comp_name')
            return render(request, 'placed_student.html', {'placed': studentPlaced, 'filter': 'Company'})
            
        
#filled students details are all fetched by this and download by these
@never_cache
def filled_student(request):
    if not request.session.get('admin_login'):
        return HttpResponseRedirect("/login/")
    else:
        admin_type=request.session.get('admin_type')
        if(admin_type =="Super"):

            filled_student_details = Resume.objects.all().order_by('branch')
            
            response = HttpResponse(content_type='text/csv')
            
            response['Content-Disposition'] = 'attachment; filename="student_filled.csv"'
            
            writer = csv.writer(response)
            writer.writerow(['Name', 'Somaiya Id', 'Branch', 'Gender', 'PRN NO.'])
            for filled_student in filled_student_details:
                writer.writerow([filled_student.name,
                filled_student.user,filled_student.branch,filled_student.gender,filled_student.number])
        
        elif(admin_type =="Information Technology" ):
            filled_student_details = Resume.objects.filter(branch=admin_type).order_by('branch')
            
            response = HttpResponse(content_type='text/csv')
            
            response['Content-Disposition'] = 'attachment; filename="student_filled.csv"'
            
            writer = csv.writer(response)
            writer.writerow(['Name', 'Somaiya Id', 'Branch', 'Gender', 'PRN NO.'])
            for filled_student in filled_student_details:
                writer.writerow([filled_student.name,
                filled_student.user,filled_student.branch,filled_student.gender,filled_student.number])
        
        elif(admin_type=="Computer"):
            filled_student_details = Resume.objects.filter(branch=admin_type).order_by('branch')
            
            response = HttpResponse(content_type='text/csv')
            
            response['Content-Disposition'] = 'attachment; filename="student_filled.csv"'
            
            writer = csv.writer(response)
            writer.writerow(['Name', 'Somaiya Id', 'Branch', 'Gender', 'PRN NO.'])
            for filled_student in filled_student_details:
                writer.writerow([filled_student.name,
                filled_student.user,filled_student.branch,filled_student.gender,filled_student.number])
        
        elif(admin_type =="Electronics & Telecommunication" ):
            filled_student_details = Resume.objects.filter(branch=admin_type).order_by('branch')
            
            response = HttpResponse(content_type='text/csv')
            
            response['Content-Disposition'] = 'attachment; filename="student_filled.csv"'
            
            writer = csv.writer(response)
            writer.writerow(['Name', 'Somaiya Id', 'Branch', 'Gender', 'PRN NO.'])
            for filled_student in filled_student_details:
                writer.writerow([filled_student.name,
                filled_student.user,filled_student.branch,filled_student.gender,filled_student.number])
        
        elif(admin_type =="Electronics" ):
            filled_student_details = Resume.objects.filter(branch=admin_type).order_by('branch')
            
            response = HttpResponse(content_type='text/csv')
            
            response['Content-Disposition'] = 'attachment; filename="student_filled.csv"'
            
            writer = csv.writer(response)
            writer.writerow(['Name', 'Somaiya Id', 'Branch', 'Gender', 'PRN NO.'])
            for filled_student in filled_student_details:
                writer.writerow([filled_student.name,
                filled_student.user,filled_student.branch,filled_student.gender,filled_student.number]) 
        return response
    


@never_cache
def logout_admin(request):
    del request.session['admin_login']
    request.session.modified = True
    return HttpResponseRedirect("/login/")


def pdf(request):
    if not request.session.get('admin_login'):
        return HttpResponseRedirect("/login/")
    else:
        admin_type=request.session.get('admin_type')
        if(admin_type =="Super"):
            company = request.GET.get('c')
            students = StudentsEligible.objects.all()
            for user in students:
                stud_interest = mailResponse.objects.filter(stud_user = user.stud_user)
                for response in stud_interest:
                    # print('response is ',response.stud_response)
                    if (int(response.stud_response) == 1):
                        # print('student eligible',response.stud_user)
                        eligible = StudentsEligible.objects.filter(stud_user=response.stud_user,comp_name=company)
                    else:
                        eligible = 'nostudents'
            # eligible = StudentsEligible.objects.filter(comp_name=company)
            template = get_template('pdf.html')
            comps = Company.objects.get(comp_name=company)
            # context = {eligible}
            # html = template.render(context)
            pdf = render_to_pdf('eligible_pdf.html', {'context': eligible, 'company': company, 'comps': comps})
        
        else:
            company = request.GET.get('c')
            students = StudentsEligible.objects.filter(branch=admin_type)
            for user in students:
                stud_interest = mailResponse.objects.filter(stud_user = user.stud_user)
                for response in stud_interest:
                    # print('response is ',response.stud_response)
                    if (int(response.stud_response) == 1):
                        print('student eligible',response.stud_user)
                        eligible = StudentsEligible.objects.filter(stud_user=response.stud_user,comp_name=company)
                    else:
                        eligible = 'nostudents'
            # eligible = StudentsEligible.objects.filter(comp_name=company)
            template = get_template('pdf.html')
            comps = Company.objects.get(comp_name=company)
            # context = {eligible}
            # html = template.render(context)
            pdf = render_to_pdf('eligible_pdf.html', {'context': eligible, 'company': company, 'comps': comps})

        return HttpResponse(pdf, content_type='application/pdf')

def company_details(request):
    if not request.session.get('admin_login'):
        return HttpResponseRedirect("/login/")
    else:
        admin_type=request.session.get('admin_type')
        if (admin_type=="Super"):
            details=Company.objects.all()
            student=StudentPlaced.objects.all()
            it = 0
            extc = 0
            etrx = 0
            comps = 0
            for place in student:
                if place.branch == "Information Technology":
                    it = it + 1
                elif place.branch == "Electronics & Telecommunication":
                    extc = extc + 1
                elif place.branch == "Electronics":
                    etrx = etrx + 1
                else:
                    comps = comps + 1

            pdf=render_to_pdf('company_details.html',{'details':details,'it': it, 'extc': extc, 'etrx': etrx, 'comps': comps})
            return HttpResponse(pdf,content_type='application/pdf')
        if (admin_type=="Information Technology"):
            details=Company.objects.filter(branch=admin_type)
            student=StudentPlaced.objects.filter(branch=admin_type)
            it=0
            for place in student:
                it+=1

            pdf=render_to_pdf('company_details.html',{'details':details,'student':student,'it':it})
            return HttpResponse(pdf,content_type='application/pdf')
        if (admin_type=="Computer"):
            details=Company.objects.filter(branch=admin_type)
            student=StudentPlaced.objects.filter(branch=admin_type)
            comps=0
            for place in student:
                comps+=1
            pdf=render_to_pdf('company_details.html',{'details':details,'student':student,'comps':comps})
            return HttpResponse(pdf,content_type='application/pdf')
        if (admin_type=="Electronics & Telecommunication"):
            details=Company.objects.filter(branch=admin_type)
            student=StudentPlaced.objects.filter(branch=admin_type)
            extc=0
            for place in student:
                extc+=1
            pdf=render_to_pdf('company_details.html',{'details':details,'student':student,'extc':extc})
            return HttpResponse(pdf,content_type='application/pdf')
        if (admin_type=="Electronics"):
            details=Company.objects.filter(branch=admin_type)
            student=StudentPlaced.objects.filter(branch=admin_type)
            etrx=0
            for place in student:
                etrx+=1
            pdf=render_to_pdf('company_details.html',{'details':details,'student':student,'etrx':etrx})
            return HttpResponse(pdf,content_type='application/pdf')

def sorting_student(request):
    if not request.session.get('admin_login'):
        return HttpResponseRedirect("/login/")
    else:
        admin_type = request.session.get('admin_type')
        if (admin_type == "Super"):
            if request.method == "POST":
                student_filter = request.POST['student_filter']

                if student_filter == "Gender":
                    student_details=Resume.objects.all().order_by('gender')
                    return render(request,"sorting_student.html",{"student_details":student_details,'student_filter':student_filter})

                elif student_filter == "Branch":

                    student_details = Resume.objects.all().order_by('branch')
                    return render(request,"sorting_student.html",{'student_details':student_details,'student_filter':student_filter})

                elif student_filter == "Percentage_low":
                    student_details = Resume.objects.all().order_by('agg')
                    return render(request,"sorting_student.html",{'student_details':student_details,'student_filter':student_filter})

                elif student_filter == "Percentage_high":
                    student_details = Resume.objects.all().order_by('-agg')
                    return render(request,"sorting_student.html",{'student_details':student_details,'student_filter':student_filter})

            else:
                return render(request,"sorting_student.html")

        elif (admin_type == "Information Technology"):
            if request.method == "POST":
                student_filter = request.POST['student_filter']

                if student_filter == "Gender":
                    student_details=Resume.objects.filter(branch=admin_type).order_by('gender')
                    return render(request,"sorting_student.html",{"student_details":student_details,'student_filter':student_filter})

                elif student_filter == "Branch":

                    student_details = Resume.objects.filter(branch=admin_type).order_by('branch')
                    return render(request,"sorting_student.html",{'student_details':student_details,'student_filter':student_filter})

                elif student_filter == "Percentage_low":
                    student_details = Resume.objects.filter(branch=admin_type).order_by('agg')
                    return render(request,"sorting_student.html",{'student_details':student_details,'student_filter':student_filter})

                elif student_filter == "Percentage_high":
                    student_details = Resume.objects.filter(branch=admin_type).order_by('-agg')
                    return render(request,"sorting_student.html",{'student_details':student_details,'student_filter':student_filter})
            else:
                return render(request,"sorting_student.html")

        elif (admin_type == "Computer"):
            if request.method == "POST":
                student_filter = request.POST['student_filter']

                if student_filter == "Gender":
                    student_details=Resume.objects.filter(branch=admin_type).order_by('gender')
                    return render(request,"sorting_student.html",{"student_details":student_details,'student_filter':student_filter})

                elif student_filter == "Branch":

                    student_details = Resume.objects.filter(branch=admin_type).order_by('branch')
                    return render(request,"sorting_student.html",{'student_details':student_details,'student_filter':student_filter})

                elif student_filter == "Percentage_low":
                    student_details = Resume.objects.filter(branch=admin_type).order_by('agg')
                    return render(request,"sorting_student.html",{'student_details':student_details,'student_filter':student_filter})

                elif student_filter == "Percentage_high":
                    student_details = Resume.objects.filter(branch=admin_type).order_by('-agg')
                    return render(request,"sorting_student.html",{'student_details':student_details,'student_filter':student_filter})
            else:
                return render(request,"sorting_student.html")

        elif (admin_type == "Electronics & Telecommunication"):
            if request.method == "POST":
                student_filter = request.POST['student_filter']

                if student_filter == "Gender":
                    student_details=Resume.objects.filter(branch=admin_type).order_by('gender')
                    return render(request,"sorting_student.html",{"student_details":student_details,'student_filter':student_filter})

                elif student_filter == "Branch":

                    student_details = Resume.objects.filter(branch=admin_type).order_by('branch')
                    return render(request,"sorting_student.html",{'student_details':student_details,'student_filter':student_filter})

                elif student_filter == "Percentage_low":
                    student_details = Resume.objects.filter(branch=admin_type).order_by('agg')
                    return render(request,"sorting_student.html",{'student_details':student_details,'student_filter':student_filter})

                elif student_filter == "Percentage_high":
                    student_details = Resume.objects.filter(branch=admin_type).order_by('-agg')
                    return render(request,"sorting_student.html",{'student_details':student_details,'student_filter':student_filter})
            else:
                return render(request,"sorting_student.html")

        elif (admin_type == "Electronics"):
            if request.method == "POST":
                student_filter = request.POST['student_filter']

                if student_filter == "Gender":
                    student_details=Resume.objects.filter(branch=admin_type).order_by('gender')
                    return render(request,"sorting_student.html",{"student_details":student_details,'student_filter':student_filter})

                elif student_filter == "Branch":

                    student_details = Resume.objects.filter(branch=admin_type).order_by('branch')
                    return render(request,"sorting_student.html",{'student_details':student_details,'student_filter':student_filter})

                elif student_filter == "Percentage_low":
                    student_details = Resume.objects.filter(branch=admin_type).order_by('agg')
                    return render(request,"sorting_student.html",{'student_details':student_details,'student_filter':student_filter})

                elif student_filter == "Percentage_high":
                    student_details = Resume.objects.filter(branch=admin_type).order_by('-agg')
                    return render(request,"sorting_student.html",{'student_details':student_details,'student_filter':student_filter})
            else:
                return render(request,"sorting_student.html")
        else:
            return render(request,"display_student.html")




def handler404(request, exception):
    return render(request, '404.html', status=404)


def handler500(request):
    return render(request, '500.html', status=500)


def delete_resume(request):
    if not request.session.get('admin_login'):
        return HttpResponseRedirect("/login/")
    else:
        types = request.session.get('admin_type')
        if (types=="Super"):
            user = request.GET.get('s')
            resume = Resume.objects.filter(user=user)
            resume.delete()
            eligible = StudentsEligible.objects.filter(stud_user=user)
            eligible.delete()
            return HttpResponseRedirect("/tnp_admin/user_display")
        elif(types=="Information Technology"):
            user = request.GET.get('s')
            resume = Resume.objects.filter(user=user,branch=types)
            resume.delete()
            eligible = StudentsEligible.objects.filter(stud_user=user)
            eligible.delete()
            return HttpResponseRedirect("/tnp_admin/user_display")
        elif(types=="Computer"):
            user = request.GET.get('s')
            resume = Resume.objects.filter(user=user,branch=types)
            resume.delete()
            eligible = StudentsEligible.objects.filter(stud_user=user)
            eligible.delete()
            return HttpResponseRedirect("/tnp_admin/user_display")
        elif(types=="Electronics & Telecommunication"):
            user = request.GET.get('s')
            resume = Resume.objects.filter(user=user,branch=types)
            resume.delete()
            eligible = StudentsEligible.objects.filter(stud_user=user)
            eligible.delete()
            return HttpResponseRedirect("/tnp_admin/user_display")
        elif(types=="Electronics"):
            user = request.GET.get('s')
            resume = Resume.objects.filter(user=user,branch=types)
            resume.delete()
            eligible = StudentsEligible.objects.filter(stud_user=user)
            eligible.delete()
            return HttpResponseRedirect("/tnp_admin/user_display")



def unlockResume(request):
    if not request.session.get('admin_login'):
        return HttpResponseRedirect("/login/")
    else:
        admin_type=request.session.get('admin_type')
        if(admin_type=="Super"):
            user = request.GET.get('s')
            resume = Resume.objects.get(user=user)
            resume.lock = False
            resume.save()
            return HttpResponseRedirect("/tnp_admin/user_display")
        elif(admin_type=="Information Technology"):
            user = request.GET.get('s')
            resume = Resume.objects.filter(user=user,branch=admin_type)
            resume.lock = False
            resume.save()
            return HttpResponseRedirect("/tnp_admin/user_display")
        elif(admin_type=="Computer"):
            user = request.GET.get('s')
            resume = Resume.objects.filter(user=user,branch=admin_type)
            resume.lock = False
            resume.save()
            return HttpResponseRedirect("/tnp_admin/user_display")
        elif(admin_type=="Electronics & Telecommunication"):
            user = request.GET.get('s')
            resume = Resume.objects.filter(user=user,branch=admin_type)
            resume.lock = False
            resume.save()
            return HttpResponseRedirect("/tnp_admin/user_display")
        elif(admin_type=="Electronics"):
            user = request.GET.get('s')
            resume = Resume.objects.filter(user=user,branch=admin_type)
            resume.lock = False
            resume.save()
            return HttpResponseRedirect("/tnp_admin/user_display")



def lockResume(request):
    if not request.session.get('admin_login'):
        return HttpResponseRedirect("/login/")
    else:
        admin_type=request.session.get('admin_type')
        if(admin_type=="Super"):
            user = request.GET.get('s')
            resume = Resume.objects.get(user=user)
            resume.lock = True
            resume.save()
            return HttpResponseRedirect("/tnp_admin/user_display")
        elif(admin_type=="Information Technology"):
            user = request.GET.get('s')
            resume = Resume.objects.filter(user=user,branch=admin_type)
            resume.lock = True
            resume.save()
            return HttpResponseRedirect("/tnp_admin/user_display")
        elif(admin_type=="Computer"):
            user = request.GET.get('s')
            resume = Resume.objects.filter(user=user,branch=admin_type)
            resume.lock = True
            resume.save()
            return HttpResponseRedirect("/tnp_admin/user_display")
        elif(admin_type=="Electronics & Telecommunication"):
            user = request.GET.get('s')
            resume = Resume.objects.filter(user=user,branch=admin_type)
            resume.lock = True
            resume.save()
            return HttpResponseRedirect("/tnp_admin/user_display")
        elif(admin_type=="Electronics"):
            user = request.GET.get('s')
            resume = Resume.objects.filter(user=user,branch=admin_type)
            resume.lock = True
            resume.save()
            return HttpResponseRedirect("/tnp_admin/user_display")




def delete_user(request):
    if not request.session.get('admin_login'):
        return HttpResponseRedirect("/login/")
    else:

        user = request.GET.get('s')
        users = User.objects.filter(username=user)
        users.delete()
        return HttpResponseRedirect("/tnp_admin/user_display")


def delete_company(request):
    if not request.session.get('admin_login'):
        return HttpResponseRedirect("/login/")
    else:
        company = request.GET.get('c')
        eligible = StudentsEligible.objects.filter(comp_name=company)
        eligible.delete()
        comp = Company.objects.filter(comp_name=company)
        comp.delete()
        return HttpResponseRedirect("/tnp_admin/display_company")


@never_cache
def add_excel(request):
    if not request.session.get('admin_login'):
        return HttpResponseRedirect("/login/")
    else:
        student = request.FILES['excel_student']
        check = student.name
        if check.endswith('.xls') or check.endswith('.xlsx') or check.endswith('.XLS') or check.endswith('.XLSX'):
            wb = openpyxl.load_workbook(student)
            worksheet = wb["Sheet1"]
            excel_data = list()
            msg = []
            no = 0
            yes = 0
            for i,row in enumerate(worksheet.iter_rows()):
                row_data = list()
                if i == 0:
                    continue
                for cell in row:
                    row_data.append(str(cell.value))
                excel_data.append(row_data)

            for add in excel_data:
                name = add[0]
                username = add[1]
                branch = add[2]

                if User.objects.filter(username=username).exists() or name == "" or username == "" or branch == "" or (not username.endswith('@somaiya.edu')):
                    no = no + 1
                else:
                    password = str(''.join(random.choices(string.ascii_uppercase + string.digits, k = 8)))
                    addUser = User(name=name, username=username, password=password, branch=branch)
                    addUser.save()
                    send_mail(
                        'Placement Portal',
                        'Id: ' + username + '\nPassword: ' + password + '.',
                        'tnpportal7@gmail.com',
                        [username],
                        fail_silently=False,
                    )
                    yes = yes + 1
            msg = {
                "yes": yes,
                "no": no,
                }
        else:
            msg = {
                "invalidate": "Invalid file format.",
                }
        return render(request, 'add_student.html', msg)



@never_cache
def student_data(request):
    if not request.session.get('admin_login'):
        return HttpResponseRedirect("/login/")
    else:
        if request.method == "POST":
            student_entries_data = request.FILES['student_data']
            checking = student_entries_data.name
            if checking.endswith('.xls') or checking.endswith('.xlsx') or checking.endswith('.XLS') or checking.endswith('.XLSX'):
                print('proper file')
    return render(request, 'student_data.html')

@never_cache
def format_of_excel(request):
    if not request.session.get('admin_login'):
        return HttpResponseRedirect("/login/")
    else:
        columns = ["GrNo",'Class Code','Sex','Name','SeatNo','Semester1','Semester2',
        'Semester3','Semester4','Semester5','Semester6','Percentage','PRN no','Contact no','Alternate contact no',
        'Somaiya ID','non-Somaiya ID']
        df = pd.DataFrame(columns=columns)
        df.index.name = 'Sr. No'
        df.index = df.index + 1
        wb = openpyxl.Workbook()
        # ws = wb.get_active_sheet()
        # df.to_excel('student_data.xlsx')        
        response = HttpResponse(content_type='application/vnd.openxmlformats-officedocument.spreadsheetml.sheet')
        response['Content-Disposition'] = 'attachment; filename=formatOfStudent.xlsx'

        # df.to_excel("formatOfStudentData.xls")

    return response



@never_cache
def edit_company(request):
    if not request.session.get('admin_login'):
        return HttpResponseRedirect("/login/")
    elif request.GET.get('c'):
        company = request.GET.get('c')
        comp = Company.objects.filter(comp_name=company)
        if comp.exists():
            data = {
                'comp': comp,
                }
            return render(request, 'edit_company.html', data)
        else:
            return HttpResponseRedirect("/tnp_admin/display_company")
    else:
        c_name = request.POST['c_name'].strip()
        compCheck = Company.objects.filter(comp_name=c_name)

        if compCheck.exists():
            c_profile = request.POST['c_profile']
            eligible=request.POST['eligible']
            bond = request.POST['bond']
            date = request.POST['date']
            time = request.POST['time']
            venue = request.POST['venue']
            branch = request.POST['branch']
            instruction = request.POST['instruction']
            campus = request.POST['campus']

            compUpdate = Company.objects.get(comp_name=c_name)
            compUpdate.comp_profile = c_profile
            compUpdate.eligibility=eligible
            compUpdate.bond = bond
            compUpdate.date = date
            compUpdate.time = time
            compUpdate.venue = venue
            compUpdate.instruction = instruction
            compUpdate.campus = campus

            compUpdate.save()
            return HttpResponseRedirect("/tnp_admin/display_company")
        else:
            return HttpResponseRedirect("/tnp_admin/display_company")


@never_cache
def endTerm(request):
    if not request.session.get('admin_login'):
        return HttpResponseRedirect("/login/")
    else:
        admin_type=request.session.get('admin_type')

        studentPlaced = StudentPlaced.objects.all().order_by('branch').order_by('ctc').values_list('stud_name', 'branch', 'id_no', 'stud_user', 'comp_name', 'ctc')

        response = HttpResponse(content_type='text/csv')
        response['Content-Disposition'] = 'attachment; filename="placements.csv"'
        writer = csv.writer(response)
        writer.writerow(['Name', 'Branch', 'Id', 'Username', 'Company', 'CTC'])
        for placed in studentPlaced:
            writer.writerow(placed)
        User.objects.all().delete()
        Resume.objects.all().delete()
        Company.objects.all().delete()
        StudentsEligible.objects.all().delete()
        StudentPlaced.objects.all().delete()
        return response
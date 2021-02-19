from django.contrib.auth.models import User

def generate_password(user):
    import random
    from random import randint

    if not user.password:
        string = "abcdefghijklmnopqrstuvwyz"
        letters = ""
        nums = ""
        pwd = ""

        for i in range(0,8):
            letters += random.choice(string)

        for i in range(0,10):
            nums += str(randint(0, 10))

        for i in range(0, 10):
            pwd += random.choice(letters) + random.choice(nums)

        pwd = pwd[0:9]

        user = User.objects.get(id=user.id)
        user.set_password(pwd)
        user.save()

        return pwd
    else:

        user.set_password(user.password)
        user.save()


def create_boss(data):
    from bosses.models import Boss

    hitman = Boss()
    hitman.pwd = data["password"]
    hitman.nickname = data["nickname"]
    hitman.description = data["description"]
    hitman.giuseppi_id = 1
    hitman.hits_id = None
    hitman.save()

    return hitman


def create_hitman(data, creator):
    from hitmans.models import Hitman

    hitman = Hitman()
    hitman.pwd = data["password"]
    hitman.nickname = data["nickname"]
    hitman.description = data["description"]
    hitman.boss_id = creator
    hitman.giuseppi_id = 1
    hitman.hits_id = None
    hitman.save()

    return hitman

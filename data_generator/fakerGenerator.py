from faker import Faker
import sys

USER_ROWS_COUNT = 100
USER_FILE_NAME = 'fakerOutputUsers.txt'

CLUBS_ROWS_COUNT = 20
CLUBS_FILE_NAME = 'fakerOutputClubs.txt'


def generateUsers():
    print(':: GENERATING USERS ::')
    with open(USER_FILE_NAME, 'w') as file:
        pass

    for i in range(USER_ROWS_COUNT):
        fake = Faker()

        name = fake.first_name()
        surname = fake.last_name()
        #city = fake.city()
        email = fake.email()
        phone_number = fake.phone_number()
        date_of_birth = fake.date_of_birth().strftime('%Y-%m-%d')

        with open(USER_FILE_NAME, 'a') as f:
            f.write('(')
            f.write('\'' + name + '\', ')
            f.write('\'' + surname + '\', ')
            f.write('\'' + email + '\', ')
            f.write('\'' + phone_number + '\', ')
            #f.write(city + ', ')
            f.write('\'' + date_of_birth + '\'')
            f.write('),\n')

        progress = (i / USER_ROWS_COUNT) * 100 + 1
        j = (i+1)//2
        sys.stdout.write('\r[{:<50}] {:.2f}%'.format('=' * j, progress) + '\t generated user: {:<15} {:<15} {:<50}'.format(name, surname, email))
        sys.stdout.flush()
    print('\n:: GENARATED USERS  ::')


def generateClubs():
    print(':: GENERATING CLUBS ::')
    with open(CLUBS_FILE_NAME, 'w') as file:
        pass

    for i in range(CLUBS_ROWS_COUNT):
        fake = Faker()

        name = fake.company()
        found_at = fake.date_of_birth().strftime('%Y-%m-%d')

        with open(CLUBS_FILE_NAME, 'a') as f:
            f.write('(')
            f.write('\'' + name + '\', ')
            f.write('\'' + found_at + '\'')
            f.write('),\n')

        progress = (i / CLUBS_ROWS_COUNT) * 100 + 1
        j = int(progress//2)
        sys.stdout.write('\r[{:<50}] {:.2f}%'.format('=' * j, progress) + '\t generated club: {:<20} {:<15}'.format(name, found_at))
        sys.stdout.flush()
    print('\n:: GENARATED CLUBS  ::')

if __name__ == "__main__":
    #generateUsers()
    generateClubs()

/* BASIC INFO ON HOW TO HANDLE WARNINGS AND DELETIONS:

  - Everytime an Admin, warns a user (frontend), a PUT + 1 update will be made to the USER warnings.
  - A mail will be sent to the users email account with warning 1 & warning 2 (last warning)
  - When a user has 3 warnings, the method "banUser" will be run automatically:
    1. All the users posts (everything assosiacted with the user i.e. "changerId") should be deleted from db
    2. A final email will be sent, telling the user that his account is banned.

    The "banUser" method: (Runs in the start of every connection)
    - SELECT/Get 'warned' (A view of all users WHERE warnings = 3 && role != banned)
    1. SELECT all Persons, Films, Reviews with the changerId of the user.
    (Use VIEW find_by_changerId)
    2. DELETE all ids of changer.id
    3. change user role to 'banned'
*/

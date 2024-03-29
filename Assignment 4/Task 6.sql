CREATE PROFILE PROFILE_TEAM_LENNY 
LIMIT
SESSIONS_PER_USER          2 
CPU_PER_SESSION            10000
IDLE_TIME                  60
CONNECT_TIME               180
CPU_PER_CALL               3000
FAILED_LOGIN_ATTEMPTS      2
PASSWORD_LIFE_TIME         30
PASSWORD_GRACE_TIME        14;

CREATE USER TL_1
IDENTIFIED BY pw_tl_1
DEFAULT TABLESPACE USERS
PROFILE PROFILE_TEAM_LENNY 
QUOTA 0M on USERS
PASSWORD EXPIRE;

CREATE USER TL_2
IDENTIFIED BY pw_tl_2
DEFAULT TABLESPACE USERS
PROFILE PROFILE_TEAM_LENNY 
QUOTA 50M on USERS
PASSWORD EXPIRE;

GRANT roleViewer TO TL_1;

GRANT roleAdmin TO TL_2;
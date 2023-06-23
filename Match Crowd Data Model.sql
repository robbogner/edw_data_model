CREATE TABLE academic_degree
(
    id   int AUTO_INCREMENT
        PRIMARY KEY,
    name varchar(255) NULL,
    CONSTRAINT UK_4y7n1saet41pj1xgb3ttlfh2l
        UNIQUE (name)
)
    CHARSET = utf8mb4;

CREATE TABLE benefit
(
    id   int AUTO_INCREMENT
        PRIMARY KEY,
    name varchar(255) NULL,
    CONSTRAINT UK_gdbukinl9j7tst0ykf8k1kdbh
        UNIQUE (name)
)
    CHARSET = utf8mb4;

CREATE TABLE company_size
(
    id   int AUTO_INCREMENT
        PRIMARY KEY,
    name varchar(255) NULL,
    CONSTRAINT UK_fspuei03t62p0b5xw5ob2q6xl
        UNIQUE (name)
)
    CHARSET = utf8mb4;

CREATE TABLE country
(
    id   int AUTO_INCREMENT
        PRIMARY KEY,
    code varchar(255) NULL,
    name varchar(255) NULL,
    CONSTRAINT UK_5s4ptnuqtd24d4p9au2rv53qm
        UNIQUE (code)
)
    CHARSET = utf8mb4;

CREATE TABLE declined_by_company_reason
(
    id   int AUTO_INCREMENT
        PRIMARY KEY,
    name varchar(255) NULL,
    tag  varchar(255) NULL,
    CONSTRAINT UK_78k434537ma5lts7j4xc3t5vo
        UNIQUE (name),
    CONSTRAINT UK_k07fmr87jotogoreali7qoqcd
        UNIQUE (tag)
)
    CHARSET = utf8mb4;

CREATE TABLE declined_by_user_reason
(
    id   int AUTO_INCREMENT
        PRIMARY KEY,
    name varchar(255) NULL,
    tag  varchar(255) NULL,
    CONSTRAINT UK_720iue1aec2tx0hjaamw3lw2v
        UNIQUE (tag),
    CONSTRAINT UK_f7x6ucy21i2v1sruu8x066tot
        UNIQUE (name)
)
    CHARSET = utf8mb4;

CREATE TABLE equipment
(
    id   int AUTO_INCREMENT
        PRIMARY KEY,
    name varchar(255) NULL,
    CONSTRAINT UK_m6whtgwe6ya84f59coio1j1wh
        UNIQUE (name)
)
    CHARSET = utf8mb4;

CREATE TABLE functional_area
(
    id   int AUTO_INCREMENT
        PRIMARY KEY,
    name varchar(255) NULL,
    CONSTRAINT UK_sd75c8eg9maw0mt667o3lwf8e
        UNIQUE (name)
)
    CHARSET = utf8mb4;

CREATE TABLE gender
(
    id   int AUTO_INCREMENT
        PRIMARY KEY,
    name varchar(255) NULL,
    CONSTRAINT UK_jdyxf8c9k9656frmqjb67cgo3
        UNIQUE (name)
)
    CHARSET = utf8mb4;

CREATE TABLE graduation
(
    id     int AUTO_INCREMENT
        PRIMARY KEY,
    name   varchar(255) NULL,
    rating int          NOT NULL,
    CONSTRAINT UK_e9du8tkixn4wf0qtola20git3
        UNIQUE (name)
)
    CHARSET = utf8mb4;

CREATE TABLE hard_skill_level
(
    id          int AUTO_INCREMENT
        PRIMARY KEY,
    description varchar(255) NULL,
    name        varchar(255) NOT NULL
)
    CHARSET = utf8mb4;

CREATE TABLE hard_skill_name
(
    id   int AUTO_INCREMENT
        PRIMARY KEY,
    name varchar(255) NOT NULL
)
    CHARSET = utf8mb4;

CREATE TABLE hard_skill_company_search
(
    id       bigint AUTO_INCREMENT
        PRIMARY KEY,
    rating   int NOT NULL,
    skill_id int NOT NULL,
    CONSTRAINT FKhstdteytfn9ujl2mfmjrcnkis
        FOREIGN KEY (skill_id) REFERENCES hard_skill_name (id)
)
    CHARSET = utf8mb4;

CREATE TABLE hard_skill_time
(
    id   int AUTO_INCREMENT
        PRIMARY KEY,
    name varchar(255) NOT NULL
)
    CHARSET = utf8mb4;

CREATE TABLE hard_skill_time_and_level
(
    id                int AUTO_INCREMENT
        PRIMARY KEY,
    rating            int NOT NULL,
    period_of_time_id int NOT NULL,
    skill_level_id    int NOT NULL,
    CONSTRAINT FK2m87xm2bmiq3gek80r3k9ku93
        FOREIGN KEY (skill_level_id) REFERENCES hard_skill_level (id),
    CONSTRAINT FKlyr97esiw2xcrx4phb2ve2b6g
        FOREIGN KEY (period_of_time_id) REFERENCES hard_skill_time (id)
)
    CHARSET = utf8mb4;

CREATE TABLE industry
(
    id   int AUTO_INCREMENT
        PRIMARY KEY,
    name varchar(255) NULL,
    CONSTRAINT UK_6157gbgwfr8x6hhm3ir0tyf55
        UNIQUE (name)
)
    CHARSET = utf8mb4;

CREATE TABLE job_level
(
    id     int AUTO_INCREMENT
        PRIMARY KEY,
    name   varchar(255) NULL,
    rating int          NOT NULL,
    CONSTRAINT UK_3k2x5ssjsbx96jn509udmdyg6
        UNIQUE (name)
)
    CHARSET = utf8mb4;

CREATE TABLE job_position
(
    id   bigint AUTO_INCREMENT
        PRIMARY KEY,
    name varchar(255) NULL,
    CONSTRAINT UK_hyxxcpmi3ahd4p78g77kojjf7
        UNIQUE (name)
)
    CHARSET = utf8mb4;

CREATE TABLE job_site
(
    id   int AUTO_INCREMENT
        PRIMARY KEY,
    name varchar(255) NULL,
    CONSTRAINT UK_tr6cnuiaijyl18hn7ea44864f
        UNIQUE (name)
)
    CHARSET = utf8mb4;

CREATE TABLE language_level
(
    id     int AUTO_INCREMENT
        PRIMARY KEY,
    name   varchar(255) NULL,
    rating int          NOT NULL,
    CONSTRAINT UK_9olwq81y6wd3rn798sftansjr
        UNIQUE (name)
)
    CHARSET = utf8mb4;

CREATE TABLE language_name
(
    id   int AUTO_INCREMENT
        PRIMARY KEY,
    name varchar(255) NULL,
    CONSTRAINT UK_ietgva6f3o88g44ri8ama647t
        UNIQUE (name)
)
    CHARSET = utf8mb4;

CREATE TABLE language_company
(
    id       bigint AUTO_INCREMENT
        PRIMARY KEY,
    level_id int NOT NULL,
    name_id  int NOT NULL,
    CONSTRAINT FK6njtrt0g849hyvfh7y05b3xrg
        FOREIGN KEY (name_id) REFERENCES language_name (id),
    CONSTRAINT FK9g0bu9v2dapadubee2yi0tqjy
        FOREIGN KEY (level_id) REFERENCES language_level (id)
)
    CHARSET = utf8mb4;

CREATE TABLE marital_status
(
    id   int AUTO_INCREMENT
        PRIMARY KEY,
    name varchar(255) NULL,
    CONSTRAINT UK_hy3bsb4cw9f70oj3db4imqpjd
        UNIQUE (name)
)
    CHARSET = utf8mb4;

CREATE TABLE methodical_competence
(
    id   int AUTO_INCREMENT
        PRIMARY KEY,
    name varchar(255) NOT NULL
)
    CHARSET = utf8mb4;

CREATE TABLE nationality
(
    id   int AUTO_INCREMENT
        PRIMARY KEY,
    name varchar(255) NULL,
    CONSTRAINT UK_q0ebuvmrq0bhf2nvqlywk3eq2
        UNIQUE (name)
)
    CHARSET = utf8mb4;

CREATE TABLE personal_competence
(
    id   int AUTO_INCREMENT
        PRIMARY KEY,
    name varchar(255) NOT NULL
)
    CHARSET = utf8mb4;

CREATE TABLE social_competence
(
    id   int AUTO_INCREMENT
        PRIMARY KEY,
    name varchar(255) NOT NULL
)
    CHARSET = utf8mb4;

CREATE TABLE subject
(
    id   int AUTO_INCREMENT
        PRIMARY KEY,
    name varchar(255) NULL,
    CONSTRAINT UK_p1jgir6qcpmqnxt4a8105wsot
        UNIQUE (name)
)
    CHARSET = utf8mb4;

CREATE TABLE title
(
    id   int AUTO_INCREMENT
        PRIMARY KEY,
    name varchar(255) NULL,
    CONSTRAINT UK_3j9cwwapic6mk5najgy5t2smu
        UNIQUE (name)
)
    CHARSET = utf8mb4;

CREATE TABLE company
(
    id                   binary(16)   NOT NULL
        PRIMARY KEY,
    city                 varchar(255) NOT NULL,
    street               varchar(255) NOT NULL,
    zip_code             varchar(255) NULL,
    billing_city         varchar(255) NOT NULL,
    billing_company_name varchar(255) NOT NULL,
    billing_street       varchar(255) NOT NULL,
    billing_zip_code     varchar(255) NULL,
    cognito_id           varchar(255) NOT NULL,
    company_description  longtext     NULL,
    company_name         varchar(255) NOT NULL,
    email                varchar(255) NOT NULL,
    first_name           varchar(255) NOT NULL,
    last_name            varchar(255) NOT NULL,
    phone_number         varchar(255) NOT NULL,
    profile_picture_id   varchar(255) NULL,
    profile_picture_url  varchar(255) NULL,
    website              varchar(255) NULL,
    academic_degree_id   int          NULL,
    country_id           int          NOT NULL,
    billing_country_id   int          NOT NULL,
    company_size_id      int          NOT NULL,
    gender_id            int          NULL,
    title_id             int          NOT NULL,
    CONSTRAINT UK_bma9lv19ba3yjwf12a34xord3
        UNIQUE (email),
    CONSTRAINT UK_lcfkldx0myk5u5bx7trge6a9f
        UNIQUE (cognito_id),
    CONSTRAINT FK78tq8wrqthc401bklvhewir9a
        FOREIGN KEY (billing_country_id) REFERENCES country (id),
    CONSTRAINT FKaa85rotlnir4w4xlj1nkilnws
        FOREIGN KEY (country_id) REFERENCES country (id),
    CONSTRAINT FKcdn187qucn8w27u4d8cybb4d9
        FOREIGN KEY (title_id) REFERENCES title (id),
    CONSTRAINT FKfi74be2psx8wxj832drwbdh7m
        FOREIGN KEY (academic_degree_id) REFERENCES academic_degree (id),
    CONSTRAINT FKqb3l8upmw39ns5u5l36pwav9m
        FOREIGN KEY (company_size_id) REFERENCES company_size (id),
    CONSTRAINT FKrmq6954f18l2ce0ncf2curbnl
        FOREIGN KEY (gender_id) REFERENCES gender (id)
)
    CHARSET = utf8mb4;

CREATE TABLE company_benefits
(
    company_id  binary(16) NOT NULL,
    benefits_id int        NOT NULL,
    PRIMARY KEY (company_id, benefits_id),
    CONSTRAINT FK21prq4hrgiel55nih276t0m5c
        FOREIGN KEY (company_id) REFERENCES company (id),
    CONSTRAINT FK28a1r1ifgrutivp7atal1fajr
        FOREIGN KEY (benefits_id) REFERENCES benefit (id)
)
    CHARSET = utf8mb4;

CREATE TABLE company_equipments
(
    company_id    binary(16) NOT NULL,
    equipments_id int        NOT NULL,
    PRIMARY KEY (company_id, equipments_id),
    CONSTRAINT FKgsbvoltwh6iwhdytr86697agd
        FOREIGN KEY (company_id) REFERENCES company (id),
    CONSTRAINT FKoyks517dfv2uh1vd5xcsq3sku
        FOREIGN KEY (equipments_id) REFERENCES equipment (id)
)
    CHARSET = utf8mb4;

CREATE TABLE company_industries
(
    company_id    binary(16) NOT NULL,
    industries_id int        NOT NULL,
    PRIMARY KEY (company_id, industries_id),
    CONSTRAINT FKcklcc292wbat3nnn25yb2f1vb
        FOREIGN KEY (company_id) REFERENCES company (id),
    CONSTRAINT FKnchiju2h5wgq60c3wiuavm8xl
        FOREIGN KEY (industries_id) REFERENCES industry (id)
)
    CHARSET = utf8mb4;

CREATE TABLE travel_willingness
(
    id   int AUTO_INCREMENT
        PRIMARY KEY,
    name varchar(255) NULL,
    CONSTRAINT UK_a179vjksv16aaypq9lgwdtfv7
        UNIQUE (name)
)
    CHARSET = utf8mb4;

CREATE TABLE search_mission_company
(
    id                                 binary(16)   NOT NULL
        PRIMARY KEY,
    activated                          bit          NOT NULL,
    annual_vacation                    int          NOT NULL,
    creation_date                      date         NOT NULL,
    deactivated_reason                 varchar(255) NULL,
    deleted                            bit          NOT NULL,
    department                         varchar(255) NULL,
    department_description             longtext     NULL,
    duration_industry                  int          NOT NULL,
    duration_job_level_work_experience int          NOT NULL,
    duration_job_position              int          NOT NULL,
    expiration_date                    date         NOT NULL,
    fixed_term_employment              bit          NOT NULL,
    head_count                         int          NOT NULL,
    city                               varchar(255) NOT NULL,
    street                             varchar(255) NOT NULL,
    zip_code                           varchar(255) NULL,
    job_location_latitude              double       NOT NULL,
    job_location_longitude             double       NOT NULL,
    job_title                          varchar(255) NOT NULL,
    matching_quote                     int          NOT NULL,
    maximum_salary                     int          NOT NULL,
    part_time_job                      bit          NOT NULL,
    start_date                         date         NULL,
    task_description                   longtext     NULL,
    company_id                         binary(16)   NOT NULL,
    functional_area_id                 int          NOT NULL,
    graduation_id                      int          NULL,
    job_level_id                       int          NOT NULL,
    job_level_work_experience_id       int          NULL,
    country_id                         int          NOT NULL,
    job_position_id                    bigint       NOT NULL,
    job_site_id                        int          NOT NULL,
    travel_willingness_id              int          NOT NULL,
    CONSTRAINT FK66hdfjxqqtwyii9dhwxf570se
        FOREIGN KEY (graduation_id) REFERENCES graduation (id),
    CONSTRAINT FKam9iy7wovk0jw8wduqqacb961
        FOREIGN KEY (travel_willingness_id) REFERENCES travel_willingness (id),
    CONSTRAINT FKc27395iaymbcx1rrfdhvbcuum
        FOREIGN KEY (functional_area_id) REFERENCES functional_area (id),
    CONSTRAINT FKetxnw1ucnmwsx5evcso3eoo62
        FOREIGN KEY (job_position_id) REFERENCES job_position (id),
    CONSTRAINT FKfmsv73q39q5phecy8hye708sd
        FOREIGN KEY (job_site_id) REFERENCES job_site (id),
    CONSTRAINT FKn194sat019ir41yw7e4f7cr2u
        FOREIGN KEY (country_id) REFERENCES country (id),
    CONSTRAINT FKok74eqkc8wx78whk0xp2j0ewv
        FOREIGN KEY (job_level_work_experience_id) REFERENCES job_level (id),
    CONSTRAINT FKqxdh06l0mxddlwp459y0e8d1u
        FOREIGN KEY (company_id) REFERENCES company (id),
    CONSTRAINT FKs8b3f4o6wk6mqhjp3qb0d2yw6
        FOREIGN KEY (job_level_id) REFERENCES job_level (id)
)
    CHARSET = utf8mb4;

CREATE TABLE search_mission_company_hard_skills
(
    search_mission_company_id binary(16) NOT NULL,
    hard_skills_id            bigint     NOT NULL,
    CONSTRAINT UK_ax0qhxuk15x59hje1yp36rnoh
        UNIQUE (hard_skills_id),
    CONSTRAINT FKceqhjggoemo5k5gnmfxpd5ect
        FOREIGN KEY (search_mission_company_id) REFERENCES search_mission_company (id),
    CONSTRAINT FKgqq229y8nrk43qnm4uw2fdkqy
        FOREIGN KEY (hard_skills_id) REFERENCES hard_skill_company_search (id)
)
    CHARSET = utf8mb4;

CREATE TABLE search_mission_company_industries
(
    search_mission_company_id binary(16) NOT NULL,
    industries_id             int        NOT NULL,
    PRIMARY KEY (search_mission_company_id, industries_id),
    CONSTRAINT FKlicvwnwj6lmktqwd40t7sxo0x
        FOREIGN KEY (search_mission_company_id) REFERENCES search_mission_company (id),
    CONSTRAINT FKmam01ktj7fc1kcni08nqp4syq
        FOREIGN KEY (industries_id) REFERENCES industry (id)
)
    CHARSET = utf8mb4;

CREATE TABLE search_mission_company_job_positions
(
    search_mission_company_id binary(16) NOT NULL,
    job_positions_id          bigint     NOT NULL,
    PRIMARY KEY (search_mission_company_id, job_positions_id),
    CONSTRAINT FKmjm5kqn7oqin3r5q9qyw8ltc8
        FOREIGN KEY (job_positions_id) REFERENCES job_position (id),
    CONSTRAINT FKtyvxp8n04v3wtnasr7fhyi94
        FOREIGN KEY (search_mission_company_id) REFERENCES search_mission_company (id)
)
    CHARSET = utf8mb4;

CREATE TABLE search_mission_company_languages
(
    search_mission_company_id binary(16) NOT NULL,
    languages_id              bigint     NOT NULL,
    CONSTRAINT UK_ivmgl8hf38ifi403asqh07nkx
        UNIQUE (languages_id),
    CONSTRAINT FK1t598kulo7n8yxbt6pmvj5v9f
        FOREIGN KEY (search_mission_company_id) REFERENCES search_mission_company (id),
    CONSTRAINT FK6pg67c6po4ectq8npu66nrelh
        FOREIGN KEY (languages_id) REFERENCES language_company (id)
)
    CHARSET = utf8mb4;

CREATE TABLE search_mission_company_methodical_competences
(
    search_mission_company_id binary(16) NOT NULL,
    methodical_competences_id int        NOT NULL,
    PRIMARY KEY (search_mission_company_id, methodical_competences_id),
    CONSTRAINT FK1rmjys9u21wyvj4effrnmqrri
        FOREIGN KEY (methodical_competences_id) REFERENCES methodical_competence (id),
    CONSTRAINT FK8o00770tcm5b1gtq2iokd225k
        FOREIGN KEY (search_mission_company_id) REFERENCES search_mission_company (id)
)
    CHARSET = utf8mb4;

CREATE TABLE search_mission_company_personal_competences
(
    search_mission_company_id binary(16) NOT NULL,
    personal_competences_id   int        NOT NULL,
    PRIMARY KEY (search_mission_company_id, personal_competences_id),
    CONSTRAINT FKkkeq8dwny99pjbcdll7iaokxl
        FOREIGN KEY (personal_competences_id) REFERENCES personal_competence (id),
    CONSTRAINT FKs43jbalgnoq1xd2mr3ugr7gq5
        FOREIGN KEY (search_mission_company_id) REFERENCES search_mission_company (id)
)
    CHARSET = utf8mb4;

CREATE TABLE search_mission_company_social_competences
(
    search_mission_company_id binary(16) NOT NULL,
    social_competences_id     int        NOT NULL,
    PRIMARY KEY (search_mission_company_id, social_competences_id),
    CONSTRAINT FK7nqvnidm3v386jdbnllrh8lxe
        FOREIGN KEY (search_mission_company_id) REFERENCES search_mission_company (id),
    CONSTRAINT FKt14chi4rkimj0bh03jmemwr0x
        FOREIGN KEY (social_competences_id) REFERENCES social_competence (id)
)
    CHARSET = utf8mb4;

CREATE TABLE search_mission_company_subjects
(
    search_mission_company_id binary(16) NOT NULL,
    subjects_id               int        NOT NULL,
    PRIMARY KEY (search_mission_company_id, subjects_id),
    CONSTRAINT FK8foe2cur7splyyva2qlw2u129
        FOREIGN KEY (subjects_id) REFERENCES subject (id),
    CONSTRAINT FKt7akgdch3s2yrvwe0oesp93ic
        FOREIGN KEY (search_mission_company_id) REFERENCES search_mission_company (id)
)
    CHARSET = utf8mb4;

CREATE TABLE user
(
    id                  binary(16)   NOT NULL
        PRIMARY KEY,
    city                varchar(255) NOT NULL,
    street              varchar(255) NOT NULL,
    zip_code            varchar(255) NULL,
    cognito_id          varchar(255) NOT NULL,
    date_of_birth       date         NOT NULL,
    desired_salary      int          NOT NULL,
    email               varchar(255) NOT NULL,
    first_name          varchar(255) NOT NULL,
    last_name           varchar(255) NOT NULL,
    motivation_speech   longtext     NULL,
    notice_period       varchar(255) NULL,
    phone_number        varchar(255) NOT NULL,
    profile_picture_id  varchar(255) NULL,
    profile_picture_url varchar(255) NULL,
    academic_degree_id  int          NULL,
    country_id          int          NOT NULL,
    gender_id           int          NOT NULL,
    marital_status_id   int          NOT NULL,
    nationality_id      int          NOT NULL,
    title_id            int          NOT NULL,
    CONSTRAINT UK_gymjqrrubi2das38qxc8rae9y
        UNIQUE (cognito_id),
    CONSTRAINT UK_ob8kqyqqgmefl0aco34akdtpe
        UNIQUE (email),
    CONSTRAINT FK45vy06hd2njvv20spxrav29ov
        FOREIGN KEY (marital_status_id) REFERENCES marital_status (id),
    CONSTRAINT FK4np4l2tene9mskuvawj7ku4i4
        FOREIGN KEY (title_id) REFERENCES title (id),
    CONSTRAINT FKcbf93j56y7t2tyhunb4neewva
        FOREIGN KEY (gender_id) REFERENCES gender (id),
    CONSTRAINT FKge8lxibk9q3wf206s600otk61
        FOREIGN KEY (country_id) REFERENCES country (id),
    CONSTRAINT FKgof0vir3w58dmo6syu5ggaxmp
        FOREIGN KEY (academic_degree_id) REFERENCES academic_degree (id),
    CONSTRAINT FKplagps7tcqdonj31pad31fwr2
        FOREIGN KEY (nationality_id) REFERENCES nationality (id)
)
    CHARSET = utf8mb4;

CREATE TABLE consent
(
    reference_type             varchar(31)  NOT NULL,
    id                         bigint AUTO_INCREMENT
        PRIMARY KEY,
    privacy_policy_accepted_at datetime(6)  NULL,
    privacy_policy_version     varchar(255) NULL,
    tos_accepted_at            datetime(6)  NULL,
    tos_version                varchar(255) NULL,
    user_id                    binary(16)   NULL,
    company_id                 binary(16)   NULL,
    CONSTRAINT UK_hegn6hncxuddn6krlqm519b2j
        UNIQUE (user_id),
    CONSTRAINT UK_kpv0yvb1hm0t03xkjvlumjwtx
        UNIQUE (company_id),
    CONSTRAINT FK9bwo52hr3w1fojkkwxv4l8jny
        FOREIGN KEY (company_id) REFERENCES company (id),
    CONSTRAINT FKdmr2t6ikxtmx2g6f5k3kb0434
        FOREIGN KEY (user_id) REFERENCES user (id)
)
    CHARSET = utf8mb4;

CREATE TABLE core_values
(
    reference_type              varchar(31)  NOT NULL,
    id                          bigint AUTO_INCREMENT
        PRIMARY KEY,
    autonomy_or_hierarchy       varchar(255) NULL,
    career_or_work_life_balance varchar(255) NULL,
    casual_or_formal            varchar(255) NULL,
    competition_or_reserved     varchar(255) NULL,
    distance_or_closeness       varchar(255) NULL,
    foreground_or_background    varchar(255) NULL,
    freedom_or_specification    varchar(255) NULL,
    goal_or_journey             varchar(255) NULL,
    innovation_or_tradition     varchar(255) NULL,
    international_or_local      varchar(255) NULL,
    me_or_we                    varchar(255) NULL,
    risk_or_certainty           varchar(255) NULL,
    specific_or_generic         varchar(255) NULL,
    user_id                     binary(16)   NULL,
    company_id                  binary(16)   NULL,
    CONSTRAINT UK_g1n61q9aqk8dq7719pv4xlm18
        UNIQUE (user_id),
    CONSTRAINT UK_h0adeostnka24ppkxei7l0m3f
        UNIQUE (company_id),
    CONSTRAINT FKgd0jqbs24qkqbgc62dml942ry
        FOREIGN KEY (company_id) REFERENCES company (id),
    CONSTRAINT FKnqapigsadc08ongf6f58jvgd4
        FOREIGN KEY (user_id) REFERENCES user (id)
)
    CHARSET = utf8mb4;

CREATE TABLE education
(
    id             bigint AUTO_INCREMENT
        PRIMARY KEY,
    city           varchar(255) NULL,
    end_date       date         NULL,
    start_date     date         NOT NULL,
    subject_course varchar(255) NOT NULL,
    university     varchar(255) NOT NULL,
    graduation_id  int          NOT NULL,
    subject_id     int          NOT NULL,
    user_id        binary(16)   NOT NULL,
    CONSTRAINT FKaw3ebf3585a1ndgqnk6k6hosc
        FOREIGN KEY (user_id) REFERENCES user (id),
    CONSTRAINT FKoqwwvih06fw5j3a79n0ytrmpi
        FOREIGN KEY (graduation_id) REFERENCES graduation (id),
    CONSTRAINT FKqglq5vdbimcac74yrpv0s41a8
        FOREIGN KEY (subject_id) REFERENCES subject (id)
)
    CHARSET = utf8mb4;

CREATE TABLE hard_skill
(
    id                          bigint AUTO_INCREMENT
        PRIMARY KEY,
    period_of_time_and_level_id int        NOT NULL,
    skill_id                    int        NOT NULL,
    user_id                     binary(16) NOT NULL,
    CONSTRAINT UK1q04kkc25gs3m1qrn6tkf732b
        UNIQUE (skill_id, user_id),
    CONSTRAINT FKhorae8x73qu7rf1fjd3bicyl
        FOREIGN KEY (skill_id) REFERENCES hard_skill_name (id),
    CONSTRAINT FKmwwhi5pcdvlk2gl9wigky3sff
        FOREIGN KEY (user_id) REFERENCES user (id),
    CONSTRAINT FKrd67f1i9ml98n9gdm8eh8ut33
        FOREIGN KEY (period_of_time_and_level_id) REFERENCES hard_skill_time_and_level (id)
)
    CHARSET = utf8mb4;

CREATE TABLE language_user
(
    id                               bigint AUTO_INCREMENT
        PRIMARY KEY,
    language_proficiency_examination bit        NOT NULL,
    level_id                         int        NOT NULL,
    name_id                          int        NOT NULL,
    user_id                          binary(16) NOT NULL,
    CONSTRAINT UKredos2b25mr3dealjprh6v4my
        UNIQUE (name_id, user_id),
    CONSTRAINT FKci0vtdx99cjkdu9ka0aiffvem
        FOREIGN KEY (user_id) REFERENCES user (id),
    CONSTRAINT FKmnfk8g4ukh358hl5o908j10qq
        FOREIGN KEY (level_id) REFERENCES language_level (id),
    CONSTRAINT FKt6uirarx6e5opdacdd018kq41
        FOREIGN KEY (name_id) REFERENCES language_name (id)
)
    CHARSET = utf8mb4;

CREATE TABLE search_mission_user
(
    id                    binary(16)   NOT NULL
        PRIMARY KEY,
    activated             bit          NOT NULL,
    annual_vacation       int          NOT NULL,
    deleted               bit          NOT NULL,
    fixed_term_employment bit          NOT NULL,
    matching_quote        int          NOT NULL,
    minimum_salary        int          NOT NULL,
    part_time_job         bit          NOT NULL,
    radius                int          NOT NULL,
    start_date            date         NULL,
    zip_code              varchar(255) NULL,
    zip_code_latitude     double       NOT NULL,
    zip_code_longitude    double       NOT NULL,
    job_site_id           int          NULL,
    travel_willingness_id int          NULL,
    user_id               binary(16)   NOT NULL,
    CONSTRAINT FK18pmi61i5gofucfrgbwebagac
        FOREIGN KEY (user_id) REFERENCES user (id),
    CONSTRAINT FKf4tn8xtmp54jkwl1vpl3jebsw
        FOREIGN KEY (travel_willingness_id) REFERENCES travel_willingness (id),
    CONSTRAINT FKgigm0rrw37my6m1m78dwkapge
        FOREIGN KEY (job_site_id) REFERENCES job_site (id)
)
    CHARSET = utf8mb4;

CREATE TABLE matching
(
    id                              binary(16)     NOT NULL
        PRIMARY KEY,
    accepted_by_company             datetime(6)    NULL,
    accepted_by_user                datetime(6)    NULL,
    core_values_result              decimal(19, 2) NOT NULL,
    data_last_modified              datetime(6)    NULL,
    declined_by_company             datetime(6)    NULL,
    declined_by_user                datetime(6)    NULL,
    education_result                decimal(19, 2) NOT NULL,
    general_conditions_result       decimal(19, 2) NOT NULL,
    hard_skill_result               decimal(19, 2) NOT NULL,
    language_result                 decimal(19, 2) NOT NULL,
    last_matching                   datetime(6)    NOT NULL,
    overall_weighted_company_result decimal(19, 2) NOT NULL,
    overall_weighted_user_result    decimal(19, 2) NOT NULL,
    perks_result                    decimal(19, 2) NOT NULL,
    soft_skill_result               decimal(19, 2) NOT NULL,
    status                          varchar(255)   NULL,
    work_experience_result          decimal(19, 2) NOT NULL,
    declined_by_company_reason_id   int            NULL,
    declined_by_user_reason_id      int            NULL,
    search_mission_company_id       binary(16)     NOT NULL,
    search_mission_user_id          binary(16)     NOT NULL,
    CONSTRAINT UKg5gdfpnd8wp1sstwuybfgtyin
        UNIQUE (search_mission_user_id, search_mission_company_id),
    CONSTRAINT FKd848cs91ktc5jh6p8vu1rlq6r
        FOREIGN KEY (search_mission_company_id) REFERENCES search_mission_company (id),
    CONSTRAINT FKotwr4rqy8d8t7abb1uygf0m97
        FOREIGN KEY (search_mission_user_id) REFERENCES search_mission_user (id),
    CONSTRAINT FKqgm1odo6g632ry0l0ijwbj9bd
        FOREIGN KEY (declined_by_company_reason_id) REFERENCES declined_by_company_reason (id),
    CONSTRAINT FKtanlb81j5pjnjyoqux6fbbecp
        FOREIGN KEY (declined_by_user_reason_id) REFERENCES declined_by_user_reason (id)
)
    CHARSET = utf8mb4;

CREATE TABLE search_mission_user_benefits
(
    search_mission_user_id binary(16) NOT NULL,
    benefits_id            int        NOT NULL,
    PRIMARY KEY (search_mission_user_id, benefits_id),
    CONSTRAINT FK52wiu5axcwysbwc66r8w9u2b
        FOREIGN KEY (search_mission_user_id) REFERENCES search_mission_user (id),
    CONSTRAINT FKkdiywit72wq0tdday0cr3eao1
        FOREIGN KEY (benefits_id) REFERENCES benefit (id)
)
    CHARSET = utf8mb4;

CREATE TABLE search_mission_user_company_sizes
(
    search_mission_user_id binary(16) NOT NULL,
    company_sizes_id       int        NOT NULL,
    PRIMARY KEY (search_mission_user_id, company_sizes_id),
    CONSTRAINT FK2agvlns8f8g1nmy2arfgtxrjc
        FOREIGN KEY (search_mission_user_id) REFERENCES search_mission_user (id),
    CONSTRAINT FK8c8lqd1u5sovfnf4p7opt7fq8
        FOREIGN KEY (company_sizes_id) REFERENCES company_size (id)
)
    CHARSET = utf8mb4;

CREATE TABLE search_mission_user_equipments
(
    search_mission_user_id binary(16) NOT NULL,
    equipments_id          int        NOT NULL,
    PRIMARY KEY (search_mission_user_id, equipments_id),
    CONSTRAINT FKe11c2mhjhjbcobk9ibpddjach
        FOREIGN KEY (search_mission_user_id) REFERENCES search_mission_user (id),
    CONSTRAINT FKjmh7nk7585flxgnla4xdbr0p0
        FOREIGN KEY (equipments_id) REFERENCES equipment (id)
)
    CHARSET = utf8mb4;

CREATE TABLE search_mission_user_functional_areas
(
    search_mission_user_id binary(16) NOT NULL,
    functional_areas_id    int        NOT NULL,
    PRIMARY KEY (search_mission_user_id, functional_areas_id),
    CONSTRAINT FK3ojfjxwa2iadmqaqysxrt7gou
        FOREIGN KEY (functional_areas_id) REFERENCES functional_area (id),
    CONSTRAINT FKmbuc4tt5doqtntd2jvnyawuv0
        FOREIGN KEY (search_mission_user_id) REFERENCES search_mission_user (id)
)
    CHARSET = utf8mb4;

CREATE TABLE search_mission_user_industries
(
    search_mission_user_id binary(16) NOT NULL,
    industries_id          int        NOT NULL,
    PRIMARY KEY (search_mission_user_id, industries_id),
    CONSTRAINT FK51j6t5e8yrj3x81mh8wbpui5s
        FOREIGN KEY (industries_id) REFERENCES industry (id),
    CONSTRAINT FKbbgoec76gv2tsbmjtykcmwvuc
        FOREIGN KEY (search_mission_user_id) REFERENCES search_mission_user (id)
)
    CHARSET = utf8mb4;

CREATE TABLE search_mission_user_job_levels
(
    search_mission_user_id binary(16) NOT NULL,
    job_levels_id          int        NOT NULL,
    PRIMARY KEY (search_mission_user_id, job_levels_id),
    CONSTRAINT FK2w837ym1l8pbi5mrq3vxhdvhn
        FOREIGN KEY (search_mission_user_id) REFERENCES search_mission_user (id),
    CONSTRAINT FKnh1juqn3byoujbi0f7opryad3
        FOREIGN KEY (job_levels_id) REFERENCES job_level (id)
)
    CHARSET = utf8mb4;

CREATE TABLE search_mission_user_job_positions
(
    search_mission_user_id binary(16) NOT NULL,
    job_positions_id       bigint     NOT NULL,
    PRIMARY KEY (search_mission_user_id, job_positions_id),
    CONSTRAINT FKbnnaeip2qodqmhhya4f6twkc6
        FOREIGN KEY (job_positions_id) REFERENCES job_position (id),
    CONSTRAINT FKdml1lfe17castigcej19nt1n2
        FOREIGN KEY (search_mission_user_id) REFERENCES search_mission_user (id)
)
    CHARSET = utf8mb4;

CREATE TABLE soft_skill
(
    id      bigint AUTO_INCREMENT
        PRIMARY KEY,
    user_id binary(16) NOT NULL,
    CONSTRAINT UK_1ojrrmyucccugvl2iacvlypd0
        UNIQUE (user_id),
    CONSTRAINT FKei4ivxp12t5cpxwu4p5f72y00
        FOREIGN KEY (user_id) REFERENCES user (id)
)
    CHARSET = utf8mb4;

CREATE TABLE soft_skill_methodical_competences
(
    soft_skill_id             bigint NOT NULL,
    methodical_competences_id int    NOT NULL,
    PRIMARY KEY (soft_skill_id, methodical_competences_id),
    CONSTRAINT FK2cffhtg5a8kok0gn75hs4bruy
        FOREIGN KEY (soft_skill_id) REFERENCES soft_skill (id),
    CONSTRAINT FK84xay7fc14eo785enboh5b6om
        FOREIGN KEY (methodical_competences_id) REFERENCES methodical_competence (id)
)
    CHARSET = utf8mb4;

CREATE TABLE soft_skill_personal_competences
(
    soft_skill_id           bigint NOT NULL,
    personal_competences_id int    NOT NULL,
    PRIMARY KEY (soft_skill_id, personal_competences_id),
    CONSTRAINT FK2etqjgfa443i5qhol51fjfmey
        FOREIGN KEY (personal_competences_id) REFERENCES personal_competence (id),
    CONSTRAINT FKox48bqkj9kk7owgqlp72q6l7e
        FOREIGN KEY (soft_skill_id) REFERENCES soft_skill (id)
)
    CHARSET = utf8mb4;

CREATE TABLE soft_skill_social_competences
(
    soft_skill_id         bigint NOT NULL,
    social_competences_id int    NOT NULL,
    PRIMARY KEY (soft_skill_id, social_competences_id),
    CONSTRAINT FK95mghg3p3vua9rrwu3vdovfgk
        FOREIGN KEY (social_competences_id) REFERENCES social_competence (id),
    CONSTRAINT FKni34iogpaglrvrm3fdwa43t7f
        FOREIGN KEY (soft_skill_id) REFERENCES soft_skill (id)
)
    CHARSET = utf8mb4;

CREATE TABLE work_experience
(
    id               bigint AUTO_INCREMENT
        PRIMARY KEY,
    city             varchar(255) NULL,
    company          varchar(255) NOT NULL,
    end_date         date         NULL,
    job_title        varchar(255) NOT NULL,
    start_date       date         NOT NULL,
    task_description longtext     NULL,
    job_level_id     int          NOT NULL,
    job_position_id  bigint       NOT NULL,
    user_id          binary(16)   NOT NULL,
    CONSTRAINT FK2nhta3twlpdm2ti1acd2x4nic
        FOREIGN KEY (job_level_id) REFERENCES job_level (id),
    CONSTRAINT FKhnxjamc0hrv0uok9w7aayk6kk
        FOREIGN KEY (user_id) REFERENCES user (id),
    CONSTRAINT FKpnp3nmuwvspcnswdnfy86tj2o
        FOREIGN KEY (job_position_id) REFERENCES job_position (id)
)
    CHARSET = utf8mb4;

CREATE TABLE work_experience_industries
(
    work_experience_id bigint NOT NULL,
    industries_id      int    NOT NULL,
    PRIMARY KEY (work_experience_id, industries_id),
    CONSTRAINT FKmcabbsfh139d5nvt9dps3poj0
        FOREIGN KEY (industries_id) REFERENCES industry (id),
    CONSTRAINT FKq3gy634m7x4t5lh5daeuv52yh
        FOREIGN KEY (work_experience_id) REFERENCES work_experience (id)
)
    CHARSET = utf8mb4;

CREATE TABLE workplace
(
    id   int AUTO_INCREMENT
        PRIMARY KEY,
    name varchar(255) NULL,
    CONSTRAINT UK_884vvqjj6eg6ao67s6xc9eb7j
        UNIQUE (name)
)
    CHARSET = utf8mb4;

CREATE TABLE company_workplaces
(
    company_id    binary(16) NOT NULL,
    workplaces_id int        NOT NULL,
    PRIMARY KEY (company_id, workplaces_id),
    CONSTRAINT FKep1jgyj0um9w3uo17vk1cv2xw
        FOREIGN KEY (company_id) REFERENCES company (id),
    CONSTRAINT FKxscbye8wofyfdgacxfvrdeom
        FOREIGN KEY (workplaces_id) REFERENCES workplace (id)
)
    CHARSET = utf8mb4;

CREATE TABLE search_mission_user_workplaces
(
    search_mission_user_id binary(16) NOT NULL,
    workplaces_id          int        NOT NULL,
    PRIMARY KEY (search_mission_user_id, workplaces_id),
    CONSTRAINT FK178v6e76qnskgrn7blpteey7i
        FOREIGN KEY (search_mission_user_id) REFERENCES search_mission_user (id),
    CONSTRAINT FK97tui44tc5gt6851emycarlgp
        FOREIGN KEY (workplaces_id) REFERENCES workplace (id)
)
    CHARSET = utf8mb4;

CREATE TABLE zip_code
(
    id   int AUTO_INCREMENT
        PRIMARY KEY,
    code varchar(255) NULL,
    CONSTRAINT UK_oenylj8hl9suvkdom4l77qt6p
        UNIQUE (code)
)
    CHARSET = utf8mb4;

CREATE TABLE zip_code_position
(
    id        bigint AUTO_INCREMENT
        PRIMARY KEY,
    latitude  double       NOT NULL,
    longitude double       NOT NULL,
    zip_code  varchar(255) NULL,
    CONSTRAINT UK_hhieofo274buddrb84k5doit6
        UNIQUE (zip_code)
)
    CHARSET = utf8mb4;



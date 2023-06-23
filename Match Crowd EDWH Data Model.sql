CREATE TABLE dim_academic_degree
(
    id                   int          NOT NULL
        PRIMARY KEY,
    name                 varchar(255) NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE dim_benefit
(
    id                   int          NOT NULL
        PRIMARY KEY,
    name                 varchar(255) NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE dim_company_size
(
    id                   int          NOT NULL
        PRIMARY KEY,
    name                 varchar(255) NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE dim_country
(
    id                   int          NOT NULL
        PRIMARY KEY,
    code                 varchar(255) NULL,
    name                 varchar(255) NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE dim_date
(
    DateId           int AUTO_INCREMENT
        PRIMARY KEY,
    DateAlternateKey date        NOT NULL,
    holidayId        int         NOT NULL,
    quarterNumber    tinyint     NOT NULL,
    quarterName      varchar(10) NOT NULL,
    monthNumber      tinyint     NOT NULL,
    monthName        varchar(10) NOT NULL,
    weekNumber       tinyint     NOT NULL,
    weekName         varchar(10) NOT NULL,
    year             smallint    NOT NULL,
    yearAndMonth     varchar(7)  NOT NULL,
    yearAndWeek      varchar(7)  NOT NULL,
    dayNumberOfWeek  tinyint     NOT NULL,
    dayNameOfWeek    varchar(20) NOT NULL,
    dayNumberOfMonth tinyint     NOT NULL,
    dayNumberOfYear  smallint    NOT NULL,
    workingDay       tinyint     NOT NULL,
    ISO_weekNumber   tinyint     NOT NULL,
    ISO_weekName     varchar(10) NOT NULL,
    ISO_year         smallint    NOT NULL,
    ISO_yearAndWeek  varchar(7)  NOT NULL,
    datePrevYear     date        NOT NULL,
    datePPY          date        NULL
);

CREATE TABLE dim_declined_by_company_reason
(
    id                   int          NOT NULL
        PRIMARY KEY,
    name                 varchar(255) NULL,
    tag                  varchar(255) NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE dim_declined_by_user_reason
(
    id                   int          NOT NULL
        PRIMARY KEY,
    name                 varchar(255) NULL,
    tag                  varchar(255) NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE dim_equipment
(
    id                   int          NOT NULL
        PRIMARY KEY,
    name                 varchar(255) NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE dim_functional_area
(
    id                   int          NOT NULL
        PRIMARY KEY,
    name                 varchar(255) NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE dim_gender
(
    id                   int          NOT NULL
        PRIMARY KEY,
    name                 varchar(255) NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE dim_graduation
(
    id                   int          NOT NULL
        PRIMARY KEY,
    name                 varchar(255) NULL,
    rating               int          NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE dim_hard_skill_level
(
    id                   int          NOT NULL
        PRIMARY KEY,
    description          varchar(255) NULL,
    name                 varchar(255) NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE dim_hard_skill_name
(
    id                   int          NOT NULL
        PRIMARY KEY,
    name                 varchar(255) NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE dim_hard_skill_time
(
    id                   int          NOT NULL
        PRIMARY KEY,
    name                 varchar(255) NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE dim_hard_skill_time_and_level
(
    id                   int      NOT NULL
        PRIMARY KEY,
    rating               int      NULL,
    period_of_time_id    int      NULL,
    skill_level_id       int      NULL,
    dataset_last_updated datetime NULL,
    dataset_created      datetime NULL
);

CREATE TABLE dim_industry
(
    id                   int          NOT NULL
        PRIMARY KEY,
    name                 varchar(255) NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE dim_job_level
(
    id                   int          NOT NULL
        PRIMARY KEY,
    name                 varchar(255) NULL,
    rating               int          NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE dim_job_position
(
    id                   int          NOT NULL
        PRIMARY KEY,
    name                 varchar(255) NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE dim_job_site
(
    id                   int          NOT NULL
        PRIMARY KEY,
    name                 varchar(255) NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE dim_language_company
(
    id                   bigint   NOT NULL
        PRIMARY KEY,
    level_id             int      NULL,
    name_id              int      NULL,
    dataset_last_updated datetime NULL,
    dataset_created      datetime NULL
);

CREATE TABLE dim_language_level
(
    id                   int          NOT NULL
        PRIMARY KEY,
    name                 varchar(255) NULL,
    rating               int          NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE dim_language_name
(
    id                   int          NOT NULL
        PRIMARY KEY,
    name                 varchar(255) NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE dim_marital_status
(
    id                   int          NOT NULL
        PRIMARY KEY,
    name                 varchar(255) NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE dim_methodical_competence
(
    id                   int          NOT NULL
        PRIMARY KEY,
    name                 varchar(255) NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE dim_nationality
(
    id                   int          NOT NULL
        PRIMARY KEY,
    name                 varchar(255) NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE dim_personal_competence
(
    id                   int          NOT NULL
        PRIMARY KEY,
    name                 varchar(255) NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE dim_social_competence
(
    id                   int          NOT NULL
        PRIMARY KEY,
    name                 varchar(255) NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE dim_soft_skill
(
    id                   bigint     NOT NULL
        PRIMARY KEY,
    user_id              binary(16) NULL,
    dataset_last_updated datetime   NULL,
    dataset_created      datetime   NULL
);

CREATE TABLE dim_subject
(
    id                   int          NOT NULL
        PRIMARY KEY,
    name                 varchar(255) NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE dim_title
(
    id                   int          NOT NULL
        PRIMARY KEY,
    name                 varchar(255) NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE dim_travel_willingness
(
    id                   int          NOT NULL
        PRIMARY KEY,
    name                 varchar(255) NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE dim_workplace
(
    id                   int          NOT NULL
        PRIMARY KEY,
    name                 varchar(255) NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE fct_company
(
    id                   binary(16)   NOT NULL
        PRIMARY KEY,
    cognito_id           varchar(255) NULL,
    city                 varchar(255) NULL,
    street               varchar(255) NULL,
    zip_code             varchar(255) NULL,
    billing_city         varchar(255) NULL,
    billing_company_name varchar(255) NULL,
    billing_street       varchar(255) NULL,
    billing_zip_code     varchar(255) NULL,
    company_name         varchar(255) NULL,
    company_description  longtext     NULL,
    email                varchar(255) NULL,
    first_name           varchar(255) NULL,
    last_name            varchar(255) NULL,
    full_name            varchar(510) NULL,
    phone_number         varchar(255) NULL,
    profile_picture_id   varchar(255) NULL,
    profile_picture_url  varchar(255) NULL,
    website              varchar(255) NULL,
    academic_degree_id   int          NULL,
    country_id           int          NULL,
    billing_country_id   int          NULL,
    company_size_id      int          NULL,
    gender_id            int          NULL,
    title_id             int          NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE fct_company_benefits
(
    company_id           binary(16) NOT NULL,
    benefits_id          int        NOT NULL,
    dataset_last_updated datetime   NULL,
    dataset_created      datetime   NULL,
    PRIMARY KEY (company_id, benefits_id)
);

CREATE TABLE fct_company_consent
(
    id                         bigint       NOT NULL
        PRIMARY KEY,
    company_id                 binary(16)   NULL,
    privacy_policy_accepted_at datetime(6)  NULL,
    privacy_policy_version     varchar(255) NULL,
    tos_accepted_at            datetime(6)  NULL,
    tos_version                varchar(255) NULL,
    dataset_last_updated       datetime     NULL,
    dataset_created            datetime     NULL
);

CREATE TABLE fct_company_core_values
(
    id                          bigint       NOT NULL
        PRIMARY KEY,
    company_id                  binary(16)   NULL,
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
    dataset_last_updated        datetime     NULL,
    dataset_created             datetime     NULL
);

CREATE TABLE fct_company_equipments
(
    company_id           binary(16) NOT NULL,
    equipments_id        int        NOT NULL,
    dataset_last_updated datetime   NULL,
    dataset_created      datetime   NULL,
    PRIMARY KEY (company_id, equipments_id)
);

CREATE TABLE fct_company_industries
(
    company_id           binary(16) NOT NULL,
    industries_id        int        NOT NULL,
    dataset_last_updated datetime   NULL,
    dataset_created      datetime   NULL,
    PRIMARY KEY (company_id, industries_id)
);

CREATE TABLE fct_company_search_mission
(
    id                                 binary(16)   NOT NULL
        PRIMARY KEY,
    activated                          bit          NULL,
    annual_vacation                    int          NULL,
    creation_date                      date         NULL,
    deleted                            bit          NULL,
    department                         varchar(255) NULL,
    department_description             longtext     NULL,
    duration_industry                  int          NULL,
    duration_job_level_work_experience int          NULL,
    duration_job_position              int          NULL,
    expiration_date                    date         NULL,
    fixed_term_employment              bit          NULL,
    head_count                         int          NULL,
    city                               varchar(255) NULL,
    street                             varchar(255) NULL,
    zip_code                           varchar(255) NULL,
    job_location_latitude              double       NULL,
    job_location_longitude             double       NULL,
    job_title                          varchar(255) NULL,
    matching_quote                     int          NULL,
    maximum_salary                     int          NULL,
    part_time_job                      bit          NULL,
    start_date                         date         NULL,
    task_description                   longtext     NULL,
    company_id                         binary(16)   NULL,
    functional_area_id                 int          NULL,
    graduation_id                      int          NULL,
    job_level_id                       int          NULL,
    job_level_work_experience_id       int          NULL,
    country_id                         int          NULL,
    job_position_id                    bigint       NULL,
    job_site_id                        int          NULL,
    travel_willingness_id              int          NULL,
    deactivated_reason                 varchar(255) NULL,
    dataset_last_updated               datetime     NULL,
    dataset_created                    datetime     NULL
);

CREATE TABLE fct_company_search_mission_hard_skills
(
    search_mission_company_id binary(16) NOT NULL,
    hard_skills_id            bigint     NOT NULL,
    rating                    int        NOT NULL,
    dataset_last_updated      datetime   NULL,
    dataset_created           datetime   NULL,
    PRIMARY KEY (search_mission_company_id, hard_skills_id, rating)
);

CREATE TABLE fct_company_search_mission_hard_skills_rating
(
    id                   bigint   NOT NULL
        PRIMARY KEY,
    rating               int      NULL,
    skill_id             int      NULL,
    dataset_last_updated datetime NULL,
    dataset_created      datetime NULL
);

CREATE TABLE fct_company_search_mission_industries
(
    search_mission_company_id binary(16) NOT NULL,
    industries_id             int        NOT NULL,
    dataset_last_updated      datetime   NULL,
    dataset_created           datetime   NULL,
    PRIMARY KEY (search_mission_company_id, industries_id)
);

CREATE TABLE fct_company_search_mission_job_positions
(
    search_mission_company_id binary(16) NOT NULL,
    job_positions_id          bigint     NOT NULL,
    dataset_last_updated      datetime   NULL,
    dataset_created           datetime   NULL,
    PRIMARY KEY (search_mission_company_id, job_positions_id)
);

CREATE TABLE fct_company_search_mission_languages
(
    search_mission_company_id binary(16) NULL,
    languages_id              bigint     NOT NULL
        PRIMARY KEY,
    dataset_last_updated      datetime   NULL,
    dataset_created           datetime   NULL
);

CREATE TABLE fct_company_search_mission_methodical_competences
(
    search_mission_company_id binary(16) NOT NULL,
    methodical_competences_id int        NOT NULL,
    dataset_last_updated      datetime   NULL,
    dataset_created           datetime   NULL,
    PRIMARY KEY (search_mission_company_id, methodical_competences_id)
);

CREATE TABLE fct_company_search_mission_personal_competences
(
    search_mission_company_id binary(16) NOT NULL,
    personal_competences_id   int        NOT NULL,
    dataset_last_updated      datetime   NULL,
    dataset_created           datetime   NULL,
    PRIMARY KEY (search_mission_company_id, personal_competences_id)
);

CREATE TABLE fct_company_search_mission_social_competences
(
    search_mission_company_id binary(16) NOT NULL,
    social_competences_id     int        NOT NULL,
    dataset_last_updated      datetime   NULL,
    dataset_created           datetime   NULL,
    PRIMARY KEY (search_mission_company_id, social_competences_id)
);

CREATE TABLE fct_company_search_mission_subjects
(
    search_mission_company_id binary(16) NOT NULL,
    subjects_id               int        NOT NULL,
    dataset_last_updated      datetime   NULL,
    dataset_created           datetime   NULL,
    PRIMARY KEY (search_mission_company_id, subjects_id)
);

CREATE TABLE fct_company_workplaces
(
    company_id           binary(16) NOT NULL,
    workplaces_id        int        NOT NULL,
    dataset_last_updated datetime   NULL,
    dataset_created      datetime   NULL,
    PRIMARY KEY (company_id, workplaces_id)
);

CREATE TABLE fct_matching
(
    id                              binary(16)     NOT NULL
        PRIMARY KEY,
    search_mission_company_id       binary(16)     NULL,
    search_mission_user_id          binary(16)     NULL,
    status                          varchar(255)   NULL,
    data_last_modified              datetime(6)    NULL,
    last_matching                   datetime(6)    NULL,
    accepted_by_company             datetime(6)    NULL,
    accepted_by_user                datetime(6)    NULL,
    declined_by_company_reason_id   int            NULL,
    declined_by_company             datetime(6)    NULL,
    declined_by_user_reason_id      int            NULL,
    declined_by_user                datetime(6)    NULL,
    overall_weighted_company_result decimal(19, 2) NULL,
    overall_weighted_user_result    decimal(19, 2) NULL,
    work_experience_result          decimal(19, 2) NULL,
    education_result                decimal(19, 2) NULL,
    language_result                 decimal(19, 2) NULL,
    hard_skill_result               decimal(19, 2) NULL,
    soft_skill_result               decimal(19, 2) NULL,
    core_values_result              decimal(19, 2) NULL,
    perks_result                    decimal(19, 2) NULL,
    general_conditions_result       decimal(19, 2) NULL,
    dataset_last_updated            datetime       NULL,
    dataset_created                 datetime       NULL
);

CREATE TABLE fct_user
(
    id                   binary(16)   NOT NULL
        PRIMARY KEY,
    cognito_id           varchar(255) NULL,
    city                 varchar(255) NULL,
    street               varchar(255) NULL,
    zip_code             varchar(255) NULL,
    date_of_birth        date         NULL,
    desired_salary       int          NULL,
    email                varchar(255) NULL,
    first_name           varchar(255) NULL,
    last_name            varchar(255) NULL,
    full_name            varchar(510) NULL,
    motivation_speech    longtext     NULL,
    notice_period        varchar(255) NULL,
    phone_number         varchar(255) NULL,
    profile_picture_id   varchar(255) NULL,
    profile_picture_url  varchar(255) NULL,
    academic_degree_id   int          NULL,
    country_id           int          NULL,
    gender_id            int          NULL,
    marital_status_id    int          NULL,
    nationality_id       int          NULL,
    title_id             int          NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE fct_user_consent
(
    id                         binary(16)   NOT NULL
        PRIMARY KEY,
    user_id                    binary(16)   NULL,
    privacy_policy_accepted_at datetime(6)  NULL,
    privacy_policy_version     varchar(255) NULL,
    tos_accepted_at            datetime(6)  NULL,
    tos_version                varchar(255) NULL,
    dataset_last_updated       datetime     NULL,
    dataset_created            datetime     NULL
);

CREATE TABLE fct_user_core_values
(
    id                          binary(16)   NOT NULL
        PRIMARY KEY,
    user_id                     binary(16)   NULL,
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
    dataset_last_updated        datetime     NULL,
    dataset_created             datetime     NULL
);

CREATE TABLE fct_user_education
(
    id                   bigint       NOT NULL
        PRIMARY KEY,
    user_id              binary(16)   NULL,
    graduation_id        int          NULL,
    subject_id           int          NULL,
    subject_course       varchar(255) NULL,
    start_date           date         NULL,
    end_date             date         NULL,
    university           varchar(255) NULL,
    city                 varchar(255) NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE fct_user_hard_skill
(
    id                          bigint     NOT NULL
        PRIMARY KEY,
    user_id                     binary(16) NULL,
    period_of_time_and_level_id int        NULL,
    skill_id                    int        NULL,
    dataset_last_updated        datetime   NULL,
    dataset_created             datetime   NULL
);

CREATE TABLE fct_user_language
(
    id                               bigint     NOT NULL
        PRIMARY KEY,
    user_id                          binary(16) NULL,
    language_proficiency_examination bit        NULL,
    level_id                         int        NULL,
    name_id                          int        NULL,
    dataset_last_updated             datetime   NULL,
    dataset_created                  datetime   NULL
);

CREATE TABLE fct_user_search_mission
(
    id                    binary(16)   NOT NULL
        PRIMARY KEY,
    user_id               binary(16)   NULL,
    activated             bit          NULL,
    annual_vacation       int          NULL,
    deleted               bit          NULL,
    fixed_term_employment bit          NULL,
    matching_quote        int          NULL,
    minimum_salary        int          NULL,
    part_time_job         bit          NULL,
    radius                int          NULL,
    start_date            date         NULL,
    zip_code              varchar(255) NULL,
    zip_code_latitude     double       NULL,
    zip_code_longitude    double       NULL,
    job_site_id           int          NULL,
    travel_willingness_id int          NULL,
    dataset_last_updated  datetime     NULL,
    dataset_created       datetime     NULL
);

CREATE TABLE fct_user_search_mission_benefits
(
    search_mission_user_id binary(16) NOT NULL,
    benefits_id            int        NOT NULL,
    dataset_last_updated   datetime   NULL,
    dataset_created        datetime   NULL,
    PRIMARY KEY (search_mission_user_id, benefits_id)
);

CREATE TABLE fct_user_search_mission_company_sizes
(
    search_mission_user_id binary(16) NOT NULL,
    company_sizes_id       int        NOT NULL,
    dataset_last_updated   datetime   NULL,
    dataset_created        datetime   NULL,
    PRIMARY KEY (search_mission_user_id, company_sizes_id)
);

CREATE TABLE fct_user_search_mission_equipments
(
    search_mission_user_id binary(16) NOT NULL,
    equipments_id          int        NOT NULL,
    dataset_last_updated   datetime   NULL,
    dataset_created        datetime   NULL,
    PRIMARY KEY (search_mission_user_id, equipments_id)
);

CREATE TABLE fct_user_search_mission_functional_areas
(
    search_mission_user_id binary(16) NOT NULL,
    functional_areas_id    int        NOT NULL,
    dataset_last_updated   datetime   NULL,
    dataset_created        datetime   NULL,
    PRIMARY KEY (search_mission_user_id, functional_areas_id)
);

CREATE TABLE fct_user_search_mission_industries
(
    search_mission_user_id binary(16) NOT NULL,
    industries_id          int        NOT NULL,
    dataset_last_updated   datetime   NULL,
    dataset_created        datetime   NULL,
    PRIMARY KEY (search_mission_user_id, industries_id)
);

CREATE TABLE fct_user_search_mission_job_levels
(
    search_mission_user_id binary(16) NOT NULL,
    job_levels_id          int        NOT NULL,
    dataset_last_updated   datetime   NULL,
    dataset_created        datetime   NULL,
    PRIMARY KEY (search_mission_user_id, job_levels_id)
);

CREATE TABLE fct_user_search_mission_job_positions
(
    search_mission_user_id binary(16) NOT NULL,
    job_positions_id       bigint     NOT NULL,
    dataset_last_updated   datetime   NULL,
    dataset_created        datetime   NULL,
    PRIMARY KEY (search_mission_user_id, job_positions_id)
);

CREATE TABLE fct_user_search_mission_workplaces
(
    search_mission_user_id binary(16) NOT NULL,
    workplaces_id          int        NOT NULL,
    dataset_last_updated   datetime   NULL,
    dataset_created        datetime   NULL,
    PRIMARY KEY (search_mission_user_id, workplaces_id)
);

CREATE TABLE fct_user_soft_skill_methodical_competences
(
    user_id                   binary(16) NOT NULL,
    methodical_competences_id int        NOT NULL,
    dataset_last_updated      datetime   NULL,
    dataset_created           datetime   NULL,
    PRIMARY KEY (user_id, methodical_competences_id)
);

CREATE TABLE fct_user_soft_skill_personal_competences
(
    user_id                 binary(16) NOT NULL,
    personal_competences_id int        NOT NULL,
    dataset_last_updated    datetime   NULL,
    dataset_created         datetime   NULL,
    PRIMARY KEY (user_id, personal_competences_id)
);

CREATE TABLE fct_user_soft_skill_social_competences
(
    user_id               binary(16) NOT NULL,
    social_competences_id int        NOT NULL,
    dataset_last_updated  datetime   NULL,
    dataset_created       datetime   NULL,
    PRIMARY KEY (user_id, social_competences_id)
);

CREATE TABLE fct_user_work_experience
(
    id                   bigint       NOT NULL
        PRIMARY KEY,
    user_id              binary(16)   NULL,
    job_title            varchar(255) NULL,
    job_position_id      bigint       NULL,
    job_level_id         int          NULL,
    start_date           date         NULL,
    end_date             date         NULL,
    task_description     longtext     NULL,
    company              varchar(255) NULL,
    city                 varchar(255) NULL,
    dataset_last_updated datetime     NULL,
    dataset_created      datetime     NULL
);

CREATE TABLE fct_user_work_experience_industries
(
    work_experience_id   bigint   NOT NULL,
    industries_id        int      NOT NULL,
    dataset_last_updated datetime NULL,
    dataset_created      datetime NULL,
    PRIMARY KEY (work_experience_id, industries_id)
);



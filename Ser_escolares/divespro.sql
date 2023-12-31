PGDMP     3    *                {            divespro    15.1    15.1 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    42541    divespro    DATABASE     |   CREATE DATABASE divespro WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE divespro;
                postgres    false            �            1259    42669    alumno    TABLE       CREATE TABLE public.alumno (
    id_alumno integer NOT NULL,
    no_de_control integer NOT NULL,
    carrera integer,
    reticula integer,
    especialidad integer,
    autorizacion_inscripcion integer,
    permiso_comite integer,
    seguimiento_alumno integer,
    grupo integer
);
    DROP TABLE public.alumno;
       public         heap    postgres    false            �            1259    42668    alumno_id_alumno_seq    SEQUENCE     �   CREATE SEQUENCE public.alumno_id_alumno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.alumno_id_alumno_seq;
       public          postgres    false    251                       0    0    alumno_id_alumno_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.alumno_id_alumno_seq OWNED BY public.alumno.id_alumno;
          public          postgres    false    250            �            1259    42543    area    TABLE     k   CREATE TABLE public.area (
    id_area integer NOT NULL,
    nombre_area character varying(50) NOT NULL
);
    DROP TABLE public.area;
       public         heap    postgres    false            �            1259    42542    area_id_area_seq    SEQUENCE     �   CREATE SEQUENCE public.area_id_area_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.area_id_area_seq;
       public          postgres    false    215                       0    0    area_id_area_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.area_id_area_seq OWNED BY public.area.id_area;
          public          postgres    false    214            �            1259    42683 
   asistencia    TABLE       CREATE TABLE public.asistencia (
    id_asistencia integer NOT NULL,
    apoyo_docencia character varying(50) NOT NULL,
    clave character varying(20) NOT NULL,
    alumnos_inscritos integer NOT NULL,
    lista_asistencia integer NOT NULL,
    periodo integer,
    grupo integer
);
    DROP TABLE public.asistencia;
       public         heap    postgres    false            �            1259    42682    asistencia_id_asistencia_seq    SEQUENCE     �   CREATE SEQUENCE public.asistencia_id_asistencia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.asistencia_id_asistencia_seq;
       public          postgres    false    255                       0    0    asistencia_id_asistencia_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.asistencia_id_asistencia_seq OWNED BY public.asistencia.id_asistencia;
          public          postgres    false    254            �            1259    42585    aula    TABLE     b  CREATE TABLE public.aula (
    id_aula integer NOT NULL,
    nombre_aula character varying(10) NOT NULL,
    ubicacion character varying(15) NOT NULL,
    capacidad_aula integer NOT NULL,
    observaciones character varying(255) NOT NULL,
    permite_cruce character varying(1) NOT NULL,
    status character varying(1) NOT NULL,
    edificio integer
);
    DROP TABLE public.aula;
       public         heap    postgres    false            �            1259    42584    aula_id_aula_seq    SEQUENCE     �   CREATE SEQUENCE public.aula_id_aula_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.aula_id_aula_seq;
       public          postgres    false    227                       0    0    aula_id_aula_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.aula_id_aula_seq OWNED BY public.aula.id_aula;
          public          postgres    false    226            �            1259    42648    autorizaciones_inscripcion    TABLE     �  CREATE TABLE public.autorizaciones_inscripcion (
    id_autorizacion_inscripcion integer NOT NULL,
    tipo_autorizacion character varying(2) NOT NULL,
    motivo_autorizacion character varying(100) NOT NULL,
    quien_autoriza character varying(35) NOT NULL,
    fecha_hora_autoriza timestamp without time zone NOT NULL,
    cantidad integer NOT NULL,
    periodo integer,
    materia_afectada integer
);
 .   DROP TABLE public.autorizaciones_inscripcion;
       public         heap    postgres    false            �            1259    42647 :   autorizaciones_inscripcion_id_autorizacion_inscripcion_seq    SEQUENCE     �   CREATE SEQUENCE public.autorizaciones_inscripcion_id_autorizacion_inscripcion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 Q   DROP SEQUENCE public.autorizaciones_inscripcion_id_autorizacion_inscripcion_seq;
       public          postgres    false    245                       0    0 :   autorizaciones_inscripcion_id_autorizacion_inscripcion_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.autorizaciones_inscripcion_id_autorizacion_inscripcion_seq OWNED BY public.autorizaciones_inscripcion.id_autorizacion_inscripcion;
          public          postgres    false    244                       1259    42690    cambio_contraseña    TABLE     n  CREATE TABLE public."cambio_contraseña" (
    "id_cambio_contraseña" integer NOT NULL,
    usuario character varying(30) NOT NULL,
    "contraseña_anterior" character varying(15) NOT NULL,
    "nueva_contraseña" character varying(15) NOT NULL,
    "repetir_nueva_contraseña" character varying(15) NOT NULL,
    id_personal integer,
    tipo_personal integer
);
 (   DROP TABLE public."cambio_contraseña";
       public         heap    postgres    false                        1259    42689 ,   cambio_contraseña_id_cambio_contraseña_seq    SEQUENCE     �   CREATE SEQUENCE public."cambio_contraseña_id_cambio_contraseña_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public."cambio_contraseña_id_cambio_contraseña_seq";
       public          postgres    false    257                       0    0 ,   cambio_contraseña_id_cambio_contraseña_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."cambio_contraseña_id_cambio_contraseña_seq" OWNED BY public."cambio_contraseña"."id_cambio_contraseña";
          public          postgres    false    256            �            1259    42564    carrera    TABLE     s  CREATE TABLE public.carrera (
    id_carrera integer NOT NULL,
    nivel_escolar character varying(1) NOT NULL,
    clave_oficial character varying(20) NOT NULL,
    nombre_carrera character varying(80) NOT NULL,
    nombre_reducido character varying(30) NOT NULL,
    siglas character varying(30) NOT NULL,
    clave_cosnet integer NOT NULL,
    departamento integer
);
    DROP TABLE public.carrera;
       public         heap    postgres    false            �            1259    42563    carrera_id_carrera_seq    SEQUENCE     �   CREATE SEQUENCE public.carrera_id_carrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.carrera_id_carrera_seq;
       public          postgres    false    221                        0    0    carrera_id_carrera_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.carrera_id_carrera_seq OWNED BY public.carrera.id_carrera;
          public          postgres    false    220            �            1259    42557    departamento    TABLE     �   CREATE TABLE public.departamento (
    id_departamento integer NOT NULL,
    nombre_departamento character varying(80) NOT NULL,
    semestre integer NOT NULL
);
     DROP TABLE public.departamento;
       public         heap    postgres    false            �            1259    42556     departamento_id_departamento_seq    SEQUENCE     �   CREATE SEQUENCE public.departamento_id_departamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.departamento_id_departamento_seq;
       public          postgres    false    219            !           0    0     departamento_id_departamento_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.departamento_id_departamento_seq OWNED BY public.departamento.id_departamento;
          public          postgres    false    218            �            1259    42550    edificio    TABLE     �   CREATE TABLE public.edificio (
    id_edificio integer NOT NULL,
    nombre_edificio character varying(30) NOT NULL,
    area integer
);
    DROP TABLE public.edificio;
       public         heap    postgres    false            �            1259    42549    edificio_id_edificio_seq    SEQUENCE     �   CREATE SEQUENCE public.edificio_id_edificio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.edificio_id_edificio_seq;
       public          postgres    false    217            "           0    0    edificio_id_edificio_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.edificio_id_edificio_seq OWNED BY public.edificio.id_edificio;
          public          postgres    false    216            �            1259    42578    especialidade    TABLE     ]  CREATE TABLE public.especialidade (
    id_especialidad integer NOT NULL,
    nombre_especialidad character varying(50) NOT NULL,
    creditos_optativos integer NOT NULL,
    creditos_especialidad integer NOT NULL,
    clave_oficial_esp character varying(30) NOT NULL,
    carrera integer,
    periodo_inicio integer,
    periodo_termino integer
);
 !   DROP TABLE public.especialidade;
       public         heap    postgres    false            �            1259    42577 !   especialidade_id_especialidad_seq    SEQUENCE     �   CREATE SEQUENCE public.especialidade_id_especialidad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.especialidade_id_especialidad_seq;
       public          postgres    false    225            #           0    0 !   especialidade_id_especialidad_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.especialidade_id_especialidad_seq OWNED BY public.especialidade.id_especialidad;
          public          postgres    false    224            �            1259    42606    grupo    TABLE     �  CREATE TABLE public.grupo (
    id_grupo integer NOT NULL,
    nonbre_grupo character varying(30) NOT NULL,
    estatus_grupo character varying(1) NOT NULL,
    capacidad_grupo integer NOT NULL,
    alumnos_inscritos integer NOT NULL,
    folio_acta character varying(12) NOT NULL,
    exclusivo_carrera boolean NOT NULL,
    exclusivo_reticula boolean NOT NULL,
    periodo integer,
    maestro integer,
    horario integer,
    carrera integer
);
    DROP TABLE public.grupo;
       public         heap    postgres    false            �            1259    42605    grupo_id_grupo_seq    SEQUENCE     �   CREATE SEQUENCE public.grupo_id_grupo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.grupo_id_grupo_seq;
       public          postgres    false    233            $           0    0    grupo_id_grupo_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.grupo_id_grupo_seq OWNED BY public.grupo.id_grupo;
          public          postgres    false    232                       1259    42697    grupos_paralelo    TABLE     	  CREATE TABLE public.grupos_paralelo (
    id_grupo_paralelo integer NOT NULL,
    nombre_grupos_paralelo character varying(30) NOT NULL,
    capacidad_grupo integer NOT NULL,
    exclusivo_carrera boolean NOT NULL,
    materia integer,
    "paralelo de" integer
);
 #   DROP TABLE public.grupos_paralelo;
       public         heap    postgres    false                       1259    42696 %   grupos_paralelo_id_grupo_paralelo_seq    SEQUENCE     �   CREATE SEQUENCE public.grupos_paralelo_id_grupo_paralelo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.grupos_paralelo_id_grupo_paralelo_seq;
       public          postgres    false    259            %           0    0 %   grupos_paralelo_id_grupo_paralelo_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.grupos_paralelo_id_grupo_paralelo_seq OWNED BY public.grupos_paralelo.id_grupo_paralelo;
          public          postgres    false    258            �            1259    42592    horario    TABLE     %  CREATE TABLE public.horario (
    id_horario integer NOT NULL,
    tipo_horario character varying(1) NOT NULL,
    dia_semana integer NOT NULL,
    hora_inicial timestamp without time zone NOT NULL,
    hora_final timestamp without time zone NOT NULL,
    actividad character varying(10) NOT NULL,
    consecutivo integer NOT NULL,
    vigencia_inicio timestamp without time zone NOT NULL,
    vigencia_fin timestamp without time zone NOT NULL,
    consecutivo_administrativo integer NOT NULL,
    capacidad integer NOT NULL,
    periodo integer
);
    DROP TABLE public.horario;
       public         heap    postgres    false            �            1259    42591    horario_id_horario_seq    SEQUENCE     �   CREATE SEQUENCE public.horario_id_horario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.horario_id_horario_seq;
       public          postgres    false    229            &           0    0    horario_id_horario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.horario_id_horario_seq OWNED BY public.horario.id_horario;
          public          postgres    false    228            �            1259    42620    mat_solicitadas_esp    TABLE     1  CREATE TABLE public.mat_solicitadas_esp (
    id_materia_solicitada_especial integer NOT NULL,
    presidente_ex integer NOT NULL,
    secretario_ex integer NOT NULL,
    fecha_inicio_ex timestamp without time zone NOT NULL,
    fecha_fin_ex timestamp without time zone NOT NULL,
    hora_inicio_ex timestamp without time zone NOT NULL,
    hora_fin_ex timestamp without time zone NOT NULL,
    folio_acta integer NOT NULL,
    vocal_ex integer NOT NULL,
    fecha_examen timestamp without time zone NOT NULL,
    periodo integer,
    permiso_comite integer
);
 '   DROP TABLE public.mat_solicitadas_esp;
       public         heap    postgres    false            �            1259    42619 6   mat_solicitadas_esp_id_materia_solicitada_especial_seq    SEQUENCE     �   CREATE SEQUENCE public.mat_solicitadas_esp_id_materia_solicitada_especial_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 M   DROP SEQUENCE public.mat_solicitadas_esp_id_materia_solicitada_especial_seq;
       public          postgres    false    237            '           0    0 6   mat_solicitadas_esp_id_materia_solicitada_especial_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.mat_solicitadas_esp_id_materia_solicitada_especial_seq OWNED BY public.mat_solicitadas_esp.id_materia_solicitada_especial;
          public          postgres    false    236            �            1259    42634    materia    TABLE     -  CREATE TABLE public.materia (
    id_materia integer NOT NULL,
    nivel_escolar character varying(1) NOT NULL,
    clave_area character varying(6) NOT NULL,
    nombre_completo_materia character varying(100) NOT NULL,
    nombre_abreviado_materia character varying(30) NOT NULL,
    grupo integer
);
    DROP TABLE public.materia;
       public         heap    postgres    false            �            1259    42633    materia_id_materia_seq    SEQUENCE     �   CREATE SEQUENCE public.materia_id_materia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.materia_id_materia_seq;
       public          postgres    false    241            (           0    0    materia_id_materia_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.materia_id_materia_seq OWNED BY public.materia.id_materia;
          public          postgres    false    240                       1259    42704    materias_carrera    TABLE     6  CREATE TABLE public.materias_carrera (
    id_matcarrera integer NOT NULL,
    creditos_materia integer NOT NULL,
    horas_teoricas integer NOT NULL,
    horas_practicas integer NOT NULL,
    orden_certificado integer NOT NULL,
    semestre_reticula integer NOT NULL,
    creditos_prerequisitos integer NOT NULL,
    clave_oficial_materia character varying(10) NOT NULL,
    estatus_materia_carrera character varying(1) NOT NULL,
    programas_estudios character varying(100) NOT NULL,
    renglon integer NOT NULL,
    materia integer,
    especialidad integer
);
 $   DROP TABLE public.materias_carrera;
       public         heap    postgres    false                       1259    42703 "   materias_carrera_id_matcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.materias_carrera_id_matcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.materias_carrera_id_matcarrera_seq;
       public          postgres    false    261            )           0    0 "   materias_carrera_id_matcarrera_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.materias_carrera_id_matcarrera_seq OWNED BY public.materias_carrera.id_matcarrera;
          public          postgres    false    260            �            1259    42571    periodos_escolare    TABLE     �   CREATE TABLE public.periodos_escolare (
    id_periodo integer NOT NULL,
    nombre_periodo character varying(11) NOT NULL,
    identificacion_larga character varying(30) NOT NULL,
    identificacion_corta character varying(12) NOT NULL
);
 %   DROP TABLE public.periodos_escolare;
       public         heap    postgres    false            �            1259    42570     periodos_escolare_id_periodo_seq    SEQUENCE     �   CREATE SEQUENCE public.periodos_escolare_id_periodo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.periodos_escolare_id_periodo_seq;
       public          postgres    false    223            *           0    0     periodos_escolare_id_periodo_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.periodos_escolare_id_periodo_seq OWNED BY public.periodos_escolare.id_periodo;
          public          postgres    false    222            �            1259    42613    permisos_comite    TABLE     �   CREATE TABLE public.permisos_comite (
    id_permiso_comite integer NOT NULL,
    tipo_permiso character varying(30) NOT NULL,
    periodo integer
);
 #   DROP TABLE public.permisos_comite;
       public         heap    postgres    false            �            1259    42612 %   permisos_comite_id_permiso_comite_seq    SEQUENCE     �   CREATE SEQUENCE public.permisos_comite_id_permiso_comite_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.permisos_comite_id_permiso_comite_seq;
       public          postgres    false    235            +           0    0 %   permisos_comite_id_permiso_comite_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.permisos_comite_id_permiso_comite_seq OWNED BY public.permisos_comite.id_permiso_comite;
          public          postgres    false    234            �            1259    42599    personal    TABLE     ]   CREATE TABLE public.personal (
    id_personal integer NOT NULL,
    departamento integer
);
    DROP TABLE public.personal;
       public         heap    postgres    false            �            1259    42598    personal_id_personal_seq    SEQUENCE     �   CREATE SEQUENCE public.personal_id_personal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.personal_id_personal_seq;
       public          postgres    false    231            ,           0    0    personal_id_personal_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.personal_id_personal_seq OWNED BY public.personal.id_personal;
          public          postgres    false    230                       1259    42711    reportes_docente    TABLE     $  CREATE TABLE public.reportes_docente (
    id_reporte integer NOT NULL,
    clave_area character varying(6) NOT NULL,
    calificiacion double precision NOT NULL,
    reprobados integer NOT NULL,
    desertados integer NOT NULL,
    periodo integer,
    grupo integer,
    maestro integer
);
 $   DROP TABLE public.reportes_docente;
       public         heap    postgres    false                       1259    42710    reportes_docente_id_reporte_seq    SEQUENCE     �   CREATE SEQUENCE public.reportes_docente_id_reporte_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.reportes_docente_id_reporte_seq;
       public          postgres    false    263            -           0    0    reportes_docente_id_reporte_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.reportes_docente_id_reporte_seq OWNED BY public.reportes_docente.id_reporte;
          public          postgres    false    262            �            1259    42641    requisitos_materia    TABLE     �   CREATE TABLE public.requisitos_materia (
    id_requisito_materia integer NOT NULL,
    tipo_requisito character varying(30) NOT NULL,
    materia_origen integer,
    materia_destino integer,
    carrera integer
);
 &   DROP TABLE public.requisitos_materia;
       public         heap    postgres    false            �            1259    42640 +   requisitos_materia_id_requisito_materia_seq    SEQUENCE     �   CREATE SEQUENCE public.requisitos_materia_id_requisito_materia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.requisitos_materia_id_requisito_materia_seq;
       public          postgres    false    243            .           0    0 +   requisitos_materia_id_requisito_materia_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.requisitos_materia_id_requisito_materia_seq OWNED BY public.requisitos_materia.id_requisito_materia;
          public          postgres    false    242            �            1259    42655    reticula    TABLE     0  CREATE TABLE public.reticula (
    id_reticula integer NOT NULL,
    carga_maxima integer NOT NULL,
    carga_minima integer NOT NULL,
    fecha_inicio timestamp without time zone NOT NULL,
    fecha_fin timestamp without time zone NOT NULL,
    creditos_totales integer NOT NULL,
    carrera integer
);
    DROP TABLE public.reticula;
       public         heap    postgres    false            �            1259    42654    reticula_id_reticula_seq    SEQUENCE     �   CREATE SEQUENCE public.reticula_id_reticula_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.reticula_id_reticula_seq;
       public          postgres    false    247            /           0    0    reticula_id_reticula_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.reticula_id_reticula_seq OWNED BY public.reticula.id_reticula;
          public          postgres    false    246            �            1259    42662    seguimientos_alumno    TABLE     1  CREATE TABLE public.seguimientos_alumno (
    id_seguimiento_alumno integer NOT NULL,
    calificacion double precision NOT NULL,
    fecha_inscripcion timestamp without time zone NOT NULL,
    fecha_modificacion timestamp without time zone NOT NULL,
    tipo_movimiento character varying(40) NOT NULL
);
 '   DROP TABLE public.seguimientos_alumno;
       public         heap    postgres    false            �            1259    42661 -   seguimientos_alumno_id_seguimiento_alumno_seq    SEQUENCE     �   CREATE SEQUENCE public.seguimientos_alumno_id_seguimiento_alumno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.seguimientos_alumno_id_seguimiento_alumno_seq;
       public          postgres    false    249            0           0    0 -   seguimientos_alumno_id_seguimiento_alumno_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.seguimientos_alumno_id_seguimiento_alumno_seq OWNED BY public.seguimientos_alumno.id_seguimiento_alumno;
          public          postgres    false    248            �            1259    42676    seleccion_materia    TABLE     �  CREATE TABLE public.seleccion_materia (
    id_seleccion_materias integer NOT NULL,
    calificacion double precision NOT NULL,
    tipo_evaluacion character varying(2) NOT NULL,
    repeticion character varying(1) NOT NULL,
    no_presento character varying(1) NOT NULL,
    status_seleccion character varying(1) NOT NULL,
    fecha_hora_seleccion timestamp without time zone NOT NULL,
    alumno integer,
    periodo integer,
    materia integer,
    requisito_materia integer
);
 %   DROP TABLE public.seleccion_materia;
       public         heap    postgres    false            �            1259    42675 +   seleccion_materia_id_seleccion_materias_seq    SEQUENCE     �   CREATE SEQUENCE public.seleccion_materia_id_seleccion_materias_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.seleccion_materia_id_seleccion_materias_seq;
       public          postgres    false    253            1           0    0 +   seleccion_materia_id_seleccion_materias_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.seleccion_materia_id_seleccion_materias_seq OWNED BY public.seleccion_materia.id_seleccion_materias;
          public          postgres    false    252            �            1259    42627    tipos_materia    TABLE     }   CREATE TABLE public.tipos_materia (
    id_tipo_materia integer NOT NULL,
    nombre_tipo character varying(100) NOT NULL
);
 !   DROP TABLE public.tipos_materia;
       public         heap    postgres    false            �            1259    42626 !   tipos_materia_id_tipo_materia_seq    SEQUENCE     �   CREATE SEQUENCE public.tipos_materia_id_tipo_materia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.tipos_materia_id_tipo_materia_seq;
       public          postgres    false    239            2           0    0 !   tipos_materia_id_tipo_materia_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.tipos_materia_id_tipo_materia_seq OWNED BY public.tipos_materia.id_tipo_materia;
          public          postgres    false    238            �           2604    42672    alumno id_alumno    DEFAULT     t   ALTER TABLE ONLY public.alumno ALTER COLUMN id_alumno SET DEFAULT nextval('public.alumno_id_alumno_seq'::regclass);
 ?   ALTER TABLE public.alumno ALTER COLUMN id_alumno DROP DEFAULT;
       public          postgres    false    250    251    251            �           2604    42546    area id_area    DEFAULT     l   ALTER TABLE ONLY public.area ALTER COLUMN id_area SET DEFAULT nextval('public.area_id_area_seq'::regclass);
 ;   ALTER TABLE public.area ALTER COLUMN id_area DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    42686    asistencia id_asistencia    DEFAULT     �   ALTER TABLE ONLY public.asistencia ALTER COLUMN id_asistencia SET DEFAULT nextval('public.asistencia_id_asistencia_seq'::regclass);
 G   ALTER TABLE public.asistencia ALTER COLUMN id_asistencia DROP DEFAULT;
       public          postgres    false    254    255    255            �           2604    42588    aula id_aula    DEFAULT     l   ALTER TABLE ONLY public.aula ALTER COLUMN id_aula SET DEFAULT nextval('public.aula_id_aula_seq'::regclass);
 ;   ALTER TABLE public.aula ALTER COLUMN id_aula DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    42651 6   autorizaciones_inscripcion id_autorizacion_inscripcion    DEFAULT     �   ALTER TABLE ONLY public.autorizaciones_inscripcion ALTER COLUMN id_autorizacion_inscripcion SET DEFAULT nextval('public.autorizaciones_inscripcion_id_autorizacion_inscripcion_seq'::regclass);
 e   ALTER TABLE public.autorizaciones_inscripcion ALTER COLUMN id_autorizacion_inscripcion DROP DEFAULT;
       public          postgres    false    244    245    245            �           2604    42693 (   cambio_contraseña id_cambio_contraseña    DEFAULT     �   ALTER TABLE ONLY public."cambio_contraseña" ALTER COLUMN "id_cambio_contraseña" SET DEFAULT nextval('public."cambio_contraseña_id_cambio_contraseña_seq"'::regclass);
 [   ALTER TABLE public."cambio_contraseña" ALTER COLUMN "id_cambio_contraseña" DROP DEFAULT;
       public          postgres    false    257    256    257            �           2604    42567    carrera id_carrera    DEFAULT     x   ALTER TABLE ONLY public.carrera ALTER COLUMN id_carrera SET DEFAULT nextval('public.carrera_id_carrera_seq'::regclass);
 A   ALTER TABLE public.carrera ALTER COLUMN id_carrera DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    42560    departamento id_departamento    DEFAULT     �   ALTER TABLE ONLY public.departamento ALTER COLUMN id_departamento SET DEFAULT nextval('public.departamento_id_departamento_seq'::regclass);
 K   ALTER TABLE public.departamento ALTER COLUMN id_departamento DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    42553    edificio id_edificio    DEFAULT     |   ALTER TABLE ONLY public.edificio ALTER COLUMN id_edificio SET DEFAULT nextval('public.edificio_id_edificio_seq'::regclass);
 C   ALTER TABLE public.edificio ALTER COLUMN id_edificio DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    42581    especialidade id_especialidad    DEFAULT     �   ALTER TABLE ONLY public.especialidade ALTER COLUMN id_especialidad SET DEFAULT nextval('public.especialidade_id_especialidad_seq'::regclass);
 L   ALTER TABLE public.especialidade ALTER COLUMN id_especialidad DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    42609    grupo id_grupo    DEFAULT     p   ALTER TABLE ONLY public.grupo ALTER COLUMN id_grupo SET DEFAULT nextval('public.grupo_id_grupo_seq'::regclass);
 =   ALTER TABLE public.grupo ALTER COLUMN id_grupo DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    42700 !   grupos_paralelo id_grupo_paralelo    DEFAULT     �   ALTER TABLE ONLY public.grupos_paralelo ALTER COLUMN id_grupo_paralelo SET DEFAULT nextval('public.grupos_paralelo_id_grupo_paralelo_seq'::regclass);
 P   ALTER TABLE public.grupos_paralelo ALTER COLUMN id_grupo_paralelo DROP DEFAULT;
       public          postgres    false    259    258    259            �           2604    42595    horario id_horario    DEFAULT     x   ALTER TABLE ONLY public.horario ALTER COLUMN id_horario SET DEFAULT nextval('public.horario_id_horario_seq'::regclass);
 A   ALTER TABLE public.horario ALTER COLUMN id_horario DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    42623 2   mat_solicitadas_esp id_materia_solicitada_especial    DEFAULT     �   ALTER TABLE ONLY public.mat_solicitadas_esp ALTER COLUMN id_materia_solicitada_especial SET DEFAULT nextval('public.mat_solicitadas_esp_id_materia_solicitada_especial_seq'::regclass);
 a   ALTER TABLE public.mat_solicitadas_esp ALTER COLUMN id_materia_solicitada_especial DROP DEFAULT;
       public          postgres    false    236    237    237            �           2604    42637    materia id_materia    DEFAULT     x   ALTER TABLE ONLY public.materia ALTER COLUMN id_materia SET DEFAULT nextval('public.materia_id_materia_seq'::regclass);
 A   ALTER TABLE public.materia ALTER COLUMN id_materia DROP DEFAULT;
       public          postgres    false    240    241    241            �           2604    42707    materias_carrera id_matcarrera    DEFAULT     �   ALTER TABLE ONLY public.materias_carrera ALTER COLUMN id_matcarrera SET DEFAULT nextval('public.materias_carrera_id_matcarrera_seq'::regclass);
 M   ALTER TABLE public.materias_carrera ALTER COLUMN id_matcarrera DROP DEFAULT;
       public          postgres    false    261    260    261            �           2604    42574    periodos_escolare id_periodo    DEFAULT     �   ALTER TABLE ONLY public.periodos_escolare ALTER COLUMN id_periodo SET DEFAULT nextval('public.periodos_escolare_id_periodo_seq'::regclass);
 K   ALTER TABLE public.periodos_escolare ALTER COLUMN id_periodo DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    42616 !   permisos_comite id_permiso_comite    DEFAULT     �   ALTER TABLE ONLY public.permisos_comite ALTER COLUMN id_permiso_comite SET DEFAULT nextval('public.permisos_comite_id_permiso_comite_seq'::regclass);
 P   ALTER TABLE public.permisos_comite ALTER COLUMN id_permiso_comite DROP DEFAULT;
       public          postgres    false    235    234    235            �           2604    42602    personal id_personal    DEFAULT     |   ALTER TABLE ONLY public.personal ALTER COLUMN id_personal SET DEFAULT nextval('public.personal_id_personal_seq'::regclass);
 C   ALTER TABLE public.personal ALTER COLUMN id_personal DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    42714    reportes_docente id_reporte    DEFAULT     �   ALTER TABLE ONLY public.reportes_docente ALTER COLUMN id_reporte SET DEFAULT nextval('public.reportes_docente_id_reporte_seq'::regclass);
 J   ALTER TABLE public.reportes_docente ALTER COLUMN id_reporte DROP DEFAULT;
       public          postgres    false    262    263    263            �           2604    42644 '   requisitos_materia id_requisito_materia    DEFAULT     �   ALTER TABLE ONLY public.requisitos_materia ALTER COLUMN id_requisito_materia SET DEFAULT nextval('public.requisitos_materia_id_requisito_materia_seq'::regclass);
 V   ALTER TABLE public.requisitos_materia ALTER COLUMN id_requisito_materia DROP DEFAULT;
       public          postgres    false    242    243    243            �           2604    42658    reticula id_reticula    DEFAULT     |   ALTER TABLE ONLY public.reticula ALTER COLUMN id_reticula SET DEFAULT nextval('public.reticula_id_reticula_seq'::regclass);
 C   ALTER TABLE public.reticula ALTER COLUMN id_reticula DROP DEFAULT;
       public          postgres    false    247    246    247            �           2604    42665 )   seguimientos_alumno id_seguimiento_alumno    DEFAULT     �   ALTER TABLE ONLY public.seguimientos_alumno ALTER COLUMN id_seguimiento_alumno SET DEFAULT nextval('public.seguimientos_alumno_id_seguimiento_alumno_seq'::regclass);
 X   ALTER TABLE public.seguimientos_alumno ALTER COLUMN id_seguimiento_alumno DROP DEFAULT;
       public          postgres    false    249    248    249            �           2604    42679 '   seleccion_materia id_seleccion_materias    DEFAULT     �   ALTER TABLE ONLY public.seleccion_materia ALTER COLUMN id_seleccion_materias SET DEFAULT nextval('public.seleccion_materia_id_seleccion_materias_seq'::regclass);
 V   ALTER TABLE public.seleccion_materia ALTER COLUMN id_seleccion_materias DROP DEFAULT;
       public          postgres    false    252    253    253            �           2604    42630    tipos_materia id_tipo_materia    DEFAULT     �   ALTER TABLE ONLY public.tipos_materia ALTER COLUMN id_tipo_materia SET DEFAULT nextval('public.tipos_materia_id_tipo_materia_seq'::regclass);
 L   ALTER TABLE public.tipos_materia ALTER COLUMN id_tipo_materia DROP DEFAULT;
       public          postgres    false    238    239    239                      0    42669    alumno 
   TABLE DATA           �   COPY public.alumno (id_alumno, no_de_control, carrera, reticula, especialidad, autorizacion_inscripcion, permiso_comite, seguimiento_alumno, grupo) FROM stdin;
    public          postgres    false    251   �;      �          0    42543    area 
   TABLE DATA           4   COPY public.area (id_area, nombre_area) FROM stdin;
    public          postgres    false    215   <                0    42683 
   asistencia 
   TABLE DATA              COPY public.asistencia (id_asistencia, apoyo_docencia, clave, alumnos_inscritos, lista_asistencia, periodo, grupo) FROM stdin;
    public          postgres    false    255   5<      �          0    42585    aula 
   TABLE DATA              COPY public.aula (id_aula, nombre_aula, ubicacion, capacidad_aula, observaciones, permite_cruce, status, edificio) FROM stdin;
    public          postgres    false    227   R<                0    42648    autorizaciones_inscripcion 
   TABLE DATA           �   COPY public.autorizaciones_inscripcion (id_autorizacion_inscripcion, tipo_autorizacion, motivo_autorizacion, quien_autoriza, fecha_hora_autoriza, cantidad, periodo, materia_afectada) FROM stdin;
    public          postgres    false    245   �<                0    42690    cambio_contraseña 
   TABLE DATA           �   COPY public."cambio_contraseña" ("id_cambio_contraseña", usuario, "contraseña_anterior", "nueva_contraseña", "repetir_nueva_contraseña", id_personal, tipo_personal) FROM stdin;
    public          postgres    false    257   �<      �          0    42564    carrera 
   TABLE DATA           �   COPY public.carrera (id_carrera, nivel_escolar, clave_oficial, nombre_carrera, nombre_reducido, siglas, clave_cosnet, departamento) FROM stdin;
    public          postgres    false    221   �<      �          0    42557    departamento 
   TABLE DATA           V   COPY public.departamento (id_departamento, nombre_departamento, semestre) FROM stdin;
    public          postgres    false    219   ,=      �          0    42550    edificio 
   TABLE DATA           F   COPY public.edificio (id_edificio, nombre_edificio, area) FROM stdin;
    public          postgres    false    217   _=      �          0    42578    especialidade 
   TABLE DATA           �   COPY public.especialidade (id_especialidad, nombre_especialidad, creditos_optativos, creditos_especialidad, clave_oficial_esp, carrera, periodo_inicio, periodo_termino) FROM stdin;
    public          postgres    false    225   �=      �          0    42606    grupo 
   TABLE DATA           �   COPY public.grupo (id_grupo, nonbre_grupo, estatus_grupo, capacidad_grupo, alumnos_inscritos, folio_acta, exclusivo_carrera, exclusivo_reticula, periodo, maestro, horario, carrera) FROM stdin;
    public          postgres    false    233   �=                0    42697    grupos_paralelo 
   TABLE DATA           �   COPY public.grupos_paralelo (id_grupo_paralelo, nombre_grupos_paralelo, capacidad_grupo, exclusivo_carrera, materia, "paralelo de") FROM stdin;
    public          postgres    false    259   �=      �          0    42592    horario 
   TABLE DATA           �   COPY public.horario (id_horario, tipo_horario, dia_semana, hora_inicial, hora_final, actividad, consecutivo, vigencia_inicio, vigencia_fin, consecutivo_administrativo, capacidad, periodo) FROM stdin;
    public          postgres    false    229   �=      �          0    42620    mat_solicitadas_esp 
   TABLE DATA           �   COPY public.mat_solicitadas_esp (id_materia_solicitada_especial, presidente_ex, secretario_ex, fecha_inicio_ex, fecha_fin_ex, hora_inicio_ex, hora_fin_ex, folio_acta, vocal_ex, fecha_examen, periodo, permiso_comite) FROM stdin;
    public          postgres    false    237    >      �          0    42634    materia 
   TABLE DATA           �   COPY public.materia (id_materia, nivel_escolar, clave_area, nombre_completo_materia, nombre_abreviado_materia, grupo) FROM stdin;
    public          postgres    false    241   >                0    42704    materias_carrera 
   TABLE DATA             COPY public.materias_carrera (id_matcarrera, creditos_materia, horas_teoricas, horas_practicas, orden_certificado, semestre_reticula, creditos_prerequisitos, clave_oficial_materia, estatus_materia_carrera, programas_estudios, renglon, materia, especialidad) FROM stdin;
    public          postgres    false    261   :>      �          0    42571    periodos_escolare 
   TABLE DATA           s   COPY public.periodos_escolare (id_periodo, nombre_periodo, identificacion_larga, identificacion_corta) FROM stdin;
    public          postgres    false    223   W>      �          0    42613    permisos_comite 
   TABLE DATA           S   COPY public.permisos_comite (id_permiso_comite, tipo_permiso, periodo) FROM stdin;
    public          postgres    false    235   t>      �          0    42599    personal 
   TABLE DATA           =   COPY public.personal (id_personal, departamento) FROM stdin;
    public          postgres    false    231   �>                0    42711    reportes_docente 
   TABLE DATA           �   COPY public.reportes_docente (id_reporte, clave_area, calificiacion, reprobados, desertados, periodo, grupo, maestro) FROM stdin;
    public          postgres    false    263   �>      �          0    42641    requisitos_materia 
   TABLE DATA           |   COPY public.requisitos_materia (id_requisito_materia, tipo_requisito, materia_origen, materia_destino, carrera) FROM stdin;
    public          postgres    false    243   �>                0    42655    reticula 
   TABLE DATA              COPY public.reticula (id_reticula, carga_maxima, carga_minima, fecha_inicio, fecha_fin, creditos_totales, carrera) FROM stdin;
    public          postgres    false    247   �>                0    42662    seguimientos_alumno 
   TABLE DATA           �   COPY public.seguimientos_alumno (id_seguimiento_alumno, calificacion, fecha_inscripcion, fecha_modificacion, tipo_movimiento) FROM stdin;
    public          postgres    false    249   ?      	          0    42676    seleccion_materia 
   TABLE DATA           �   COPY public.seleccion_materia (id_seleccion_materias, calificacion, tipo_evaluacion, repeticion, no_presento, status_seleccion, fecha_hora_seleccion, alumno, periodo, materia, requisito_materia) FROM stdin;
    public          postgres    false    253   "?      �          0    42627    tipos_materia 
   TABLE DATA           E   COPY public.tipos_materia (id_tipo_materia, nombre_tipo) FROM stdin;
    public          postgres    false    239   ??      3           0    0    alumno_id_alumno_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.alumno_id_alumno_seq', 1, false);
          public          postgres    false    250            4           0    0    area_id_area_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.area_id_area_seq', 1, true);
          public          postgres    false    214            5           0    0    asistencia_id_asistencia_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.asistencia_id_asistencia_seq', 1, false);
          public          postgres    false    254            6           0    0    aula_id_aula_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.aula_id_aula_seq', 5, true);
          public          postgres    false    226            7           0    0 :   autorizaciones_inscripcion_id_autorizacion_inscripcion_seq    SEQUENCE SET     i   SELECT pg_catalog.setval('public.autorizaciones_inscripcion_id_autorizacion_inscripcion_seq', 1, false);
          public          postgres    false    244            8           0    0 ,   cambio_contraseña_id_cambio_contraseña_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public."cambio_contraseña_id_cambio_contraseña_seq"', 1, false);
          public          postgres    false    256            9           0    0    carrera_id_carrera_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.carrera_id_carrera_seq', 6, true);
          public          postgres    false    220            :           0    0     departamento_id_departamento_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.departamento_id_departamento_seq', 1, true);
          public          postgres    false    218            ;           0    0    edificio_id_edificio_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.edificio_id_edificio_seq', 1, true);
          public          postgres    false    216            <           0    0 !   especialidade_id_especialidad_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.especialidade_id_especialidad_seq', 7, true);
          public          postgres    false    224            =           0    0    grupo_id_grupo_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.grupo_id_grupo_seq', 1, false);
          public          postgres    false    232            >           0    0 %   grupos_paralelo_id_grupo_paralelo_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.grupos_paralelo_id_grupo_paralelo_seq', 1, false);
          public          postgres    false    258            ?           0    0    horario_id_horario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.horario_id_horario_seq', 1, false);
          public          postgres    false    228            @           0    0 6   mat_solicitadas_esp_id_materia_solicitada_especial_seq    SEQUENCE SET     e   SELECT pg_catalog.setval('public.mat_solicitadas_esp_id_materia_solicitada_especial_seq', 1, false);
          public          postgres    false    236            A           0    0    materia_id_materia_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.materia_id_materia_seq', 1, false);
          public          postgres    false    240            B           0    0 "   materias_carrera_id_matcarrera_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.materias_carrera_id_matcarrera_seq', 1, false);
          public          postgres    false    260            C           0    0     periodos_escolare_id_periodo_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.periodos_escolare_id_periodo_seq', 1, false);
          public          postgres    false    222            D           0    0 %   permisos_comite_id_permiso_comite_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.permisos_comite_id_permiso_comite_seq', 1, false);
          public          postgres    false    234            E           0    0    personal_id_personal_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.personal_id_personal_seq', 1, false);
          public          postgres    false    230            F           0    0    reportes_docente_id_reporte_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.reportes_docente_id_reporte_seq', 1, false);
          public          postgres    false    262            G           0    0 +   requisitos_materia_id_requisito_materia_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.requisitos_materia_id_requisito_materia_seq', 1, false);
          public          postgres    false    242            H           0    0    reticula_id_reticula_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.reticula_id_reticula_seq', 1, false);
          public          postgres    false    246            I           0    0 -   seguimientos_alumno_id_seguimiento_alumno_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.seguimientos_alumno_id_seguimiento_alumno_seq', 1, false);
          public          postgres    false    248            J           0    0 +   seleccion_materia_id_seleccion_materias_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.seleccion_materia_id_seleccion_materias_seq', 1, false);
          public          postgres    false    252            K           0    0 !   tipos_materia_id_tipo_materia_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.tipos_materia_id_tipo_materia_seq', 1, false);
          public          postgres    false    238            �           2606    42576 0   periodos_escolare PK_01c106b8cf3fd07817d00866aed 
   CONSTRAINT     x   ALTER TABLE ONLY public.periodos_escolare
    ADD CONSTRAINT "PK_01c106b8cf3fd07817d00866aed" PRIMARY KEY (id_periodo);
 \   ALTER TABLE ONLY public.periodos_escolare DROP CONSTRAINT "PK_01c106b8cf3fd07817d00866aed";
       public            postgres    false    223                       2606    42660 '   reticula PK_0b3e41fb1c081dc0c88a1096356 
   CONSTRAINT     p   ALTER TABLE ONLY public.reticula
    ADD CONSTRAINT "PK_0b3e41fb1c081dc0c88a1096356" PRIMARY KEY (id_reticula);
 S   ALTER TABLE ONLY public.reticula DROP CONSTRAINT "PK_0b3e41fb1c081dc0c88a1096356";
       public            postgres    false    247            '           2606    42716 /   reportes_docente PK_0cf65264ff894711f55deccdc3e 
   CONSTRAINT     w   ALTER TABLE ONLY public.reportes_docente
    ADD CONSTRAINT "PK_0cf65264ff894711f55deccdc3e" PRIMARY KEY (id_reporte);
 [   ALTER TABLE ONLY public.reportes_docente DROP CONSTRAINT "PK_0cf65264ff894711f55deccdc3e";
       public            postgres    false    263                       2606    42674 %   alumno PK_0dbf9330455c32ba867bde7db7f 
   CONSTRAINT     l   ALTER TABLE ONLY public.alumno
    ADD CONSTRAINT "PK_0dbf9330455c32ba867bde7db7f" PRIMARY KEY (id_alumno);
 Q   ALTER TABLE ONLY public.alumno DROP CONSTRAINT "PK_0dbf9330455c32ba867bde7db7f";
       public            postgres    false    251            	           2606    42611 $   grupo PK_0e0b9e86d312e5af436a5c56543 
   CONSTRAINT     j   ALTER TABLE ONLY public.grupo
    ADD CONSTRAINT "PK_0e0b9e86d312e5af436a5c56543" PRIMARY KEY (id_grupo);
 P   ALTER TABLE ONLY public.grupo DROP CONSTRAINT "PK_0e0b9e86d312e5af436a5c56543";
       public            postgres    false    233                       2606    42667 2   seguimientos_alumno PK_19b35112eb80b4cfe5e89eba287 
   CONSTRAINT     �   ALTER TABLE ONLY public.seguimientos_alumno
    ADD CONSTRAINT "PK_19b35112eb80b4cfe5e89eba287" PRIMARY KEY (id_seguimiento_alumno);
 ^   ALTER TABLE ONLY public.seguimientos_alumno DROP CONSTRAINT "PK_19b35112eb80b4cfe5e89eba287";
       public            postgres    false    249                       2606    42646 1   requisitos_materia PK_3c99a8f3829816dc851041def22 
   CONSTRAINT     �   ALTER TABLE ONLY public.requisitos_materia
    ADD CONSTRAINT "PK_3c99a8f3829816dc851041def22" PRIMARY KEY (id_requisito_materia);
 ]   ALTER TABLE ONLY public.requisitos_materia DROP CONSTRAINT "PK_3c99a8f3829816dc851041def22";
       public            postgres    false    243            %           2606    42709 /   materias_carrera PK_3ee8696b0c72074598a40bf23f2 
   CONSTRAINT     z   ALTER TABLE ONLY public.materias_carrera
    ADD CONSTRAINT "PK_3ee8696b0c72074598a40bf23f2" PRIMARY KEY (id_matcarrera);
 [   ALTER TABLE ONLY public.materias_carrera DROP CONSTRAINT "PK_3ee8696b0c72074598a40bf23f2";
       public            postgres    false    261                       2606    42583 ,   especialidade PK_5c4c77bc7aca46b382dd73578f7 
   CONSTRAINT     y   ALTER TABLE ONLY public.especialidade
    ADD CONSTRAINT "PK_5c4c77bc7aca46b382dd73578f7" PRIMARY KEY (id_especialidad);
 X   ALTER TABLE ONLY public.especialidade DROP CONSTRAINT "PK_5c4c77bc7aca46b382dd73578f7";
       public            postgres    false    225                       2606    42639 &   materia PK_697ac9fc6d88c351b207aad1420 
   CONSTRAINT     n   ALTER TABLE ONLY public.materia
    ADD CONSTRAINT "PK_697ac9fc6d88c351b207aad1420" PRIMARY KEY (id_materia);
 R   ALTER TABLE ONLY public.materia DROP CONSTRAINT "PK_697ac9fc6d88c351b207aad1420";
       public            postgres    false    241            !           2606    42695 1   cambio_contraseña PK_6f761bc274644a91e175adc6bd3 
   CONSTRAINT     �   ALTER TABLE ONLY public."cambio_contraseña"
    ADD CONSTRAINT "PK_6f761bc274644a91e175adc6bd3" PRIMARY KEY ("id_cambio_contraseña");
 _   ALTER TABLE ONLY public."cambio_contraseña" DROP CONSTRAINT "PK_6f761bc274644a91e175adc6bd3";
       public            postgres    false    257                       2606    42597 &   horario PK_8449c701459acf36f475574da20 
   CONSTRAINT     n   ALTER TABLE ONLY public.horario
    ADD CONSTRAINT "PK_8449c701459acf36f475574da20" PRIMARY KEY (id_horario);
 R   ALTER TABLE ONLY public.horario DROP CONSTRAINT "PK_8449c701459acf36f475574da20";
       public            postgres    false    229            �           2606    42548 #   area PK_86074992649c7e39b53c6ac70aa 
   CONSTRAINT     h   ALTER TABLE ONLY public.area
    ADD CONSTRAINT "PK_86074992649c7e39b53c6ac70aa" PRIMARY KEY (id_area);
 O   ALTER TABLE ONLY public.area DROP CONSTRAINT "PK_86074992649c7e39b53c6ac70aa";
       public            postgres    false    215                       2606    42604 '   personal PK_864a6cb3bb3822d28c178ce0995 
   CONSTRAINT     p   ALTER TABLE ONLY public.personal
    ADD CONSTRAINT "PK_864a6cb3bb3822d28c178ce0995" PRIMARY KEY (id_personal);
 S   ALTER TABLE ONLY public.personal DROP CONSTRAINT "PK_864a6cb3bb3822d28c178ce0995";
       public            postgres    false    231                       2606    42590 #   aula PK_93cc459191b4d2e74e86ab65303 
   CONSTRAINT     h   ALTER TABLE ONLY public.aula
    ADD CONSTRAINT "PK_93cc459191b4d2e74e86ab65303" PRIMARY KEY (id_aula);
 O   ALTER TABLE ONLY public.aula DROP CONSTRAINT "PK_93cc459191b4d2e74e86ab65303";
       public            postgres    false    227                       2606    42681 0   seleccion_materia PK_9462c7537dc9e96fa59d1240e30 
   CONSTRAINT     �   ALTER TABLE ONLY public.seleccion_materia
    ADD CONSTRAINT "PK_9462c7537dc9e96fa59d1240e30" PRIMARY KEY (id_seleccion_materias);
 \   ALTER TABLE ONLY public.seleccion_materia DROP CONSTRAINT "PK_9462c7537dc9e96fa59d1240e30";
       public            postgres    false    253                       2606    42688 )   asistencia PK_99b213bc5bc7583a4c03049d8df 
   CONSTRAINT     t   ALTER TABLE ONLY public.asistencia
    ADD CONSTRAINT "PK_99b213bc5bc7583a4c03049d8df" PRIMARY KEY (id_asistencia);
 U   ALTER TABLE ONLY public.asistencia DROP CONSTRAINT "PK_99b213bc5bc7583a4c03049d8df";
       public            postgres    false    255                       2606    42618 .   permisos_comite PK_9a9f144ec8310b58f89a7669fe5 
   CONSTRAINT     }   ALTER TABLE ONLY public.permisos_comite
    ADD CONSTRAINT "PK_9a9f144ec8310b58f89a7669fe5" PRIMARY KEY (id_permiso_comite);
 Z   ALTER TABLE ONLY public.permisos_comite DROP CONSTRAINT "PK_9a9f144ec8310b58f89a7669fe5";
       public            postgres    false    235                       2606    42625 2   mat_solicitadas_esp PK_af482bfaee5eb14a6c963479bcd 
   CONSTRAINT     �   ALTER TABLE ONLY public.mat_solicitadas_esp
    ADD CONSTRAINT "PK_af482bfaee5eb14a6c963479bcd" PRIMARY KEY (id_materia_solicitada_especial);
 ^   ALTER TABLE ONLY public.mat_solicitadas_esp DROP CONSTRAINT "PK_af482bfaee5eb14a6c963479bcd";
       public            postgres    false    237            �           2606    42562 +   departamento PK_be26d64344a1161ceb63ecbf2fc 
   CONSTRAINT     x   ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT "PK_be26d64344a1161ceb63ecbf2fc" PRIMARY KEY (id_departamento);
 W   ALTER TABLE ONLY public.departamento DROP CONSTRAINT "PK_be26d64344a1161ceb63ecbf2fc";
       public            postgres    false    219            #           2606    42702 .   grupos_paralelo PK_cdb12a2c89a7431005511aa86c2 
   CONSTRAINT     }   ALTER TABLE ONLY public.grupos_paralelo
    ADD CONSTRAINT "PK_cdb12a2c89a7431005511aa86c2" PRIMARY KEY (id_grupo_paralelo);
 Z   ALTER TABLE ONLY public.grupos_paralelo DROP CONSTRAINT "PK_cdb12a2c89a7431005511aa86c2";
       public            postgres    false    259            �           2606    42555 '   edificio PK_e057b32161c5b298a735722d25d 
   CONSTRAINT     p   ALTER TABLE ONLY public.edificio
    ADD CONSTRAINT "PK_e057b32161c5b298a735722d25d" PRIMARY KEY (id_edificio);
 S   ALTER TABLE ONLY public.edificio DROP CONSTRAINT "PK_e057b32161c5b298a735722d25d";
       public            postgres    false    217                       2606    42632 ,   tipos_materia PK_e20647c9f1ec4851b6fd6969996 
   CONSTRAINT     y   ALTER TABLE ONLY public.tipos_materia
    ADD CONSTRAINT "PK_e20647c9f1ec4851b6fd6969996" PRIMARY KEY (id_tipo_materia);
 X   ALTER TABLE ONLY public.tipos_materia DROP CONSTRAINT "PK_e20647c9f1ec4851b6fd6969996";
       public            postgres    false    239            �           2606    42569 &   carrera PK_f84be58089e21966916dac33cf8 
   CONSTRAINT     n   ALTER TABLE ONLY public.carrera
    ADD CONSTRAINT "PK_f84be58089e21966916dac33cf8" PRIMARY KEY (id_carrera);
 R   ALTER TABLE ONLY public.carrera DROP CONSTRAINT "PK_f84be58089e21966916dac33cf8";
       public            postgres    false    221                       2606    42653 9   autorizaciones_inscripcion PK_fb5afbdf539bdc5df358c9ee75e 
   CONSTRAINT     �   ALTER TABLE ONLY public.autorizaciones_inscripcion
    ADD CONSTRAINT "PK_fb5afbdf539bdc5df358c9ee75e" PRIMARY KEY (id_autorizacion_inscripcion);
 e   ALTER TABLE ONLY public.autorizaciones_inscripcion DROP CONSTRAINT "PK_fb5afbdf539bdc5df358c9ee75e";
       public            postgres    false    245            >           2606    42827 %   alumno FK_01d62a4d2bb3b696d2c6b4f18b0    FK CONSTRAINT     �   ALTER TABLE ONLY public.alumno
    ADD CONSTRAINT "FK_01d62a4d2bb3b696d2c6b4f18b0" FOREIGN KEY (carrera) REFERENCES public.carrera(id_carrera);
 Q   ALTER TABLE ONLY public.alumno DROP CONSTRAINT "FK_01d62a4d2bb3b696d2c6b4f18b0";
       public          postgres    false    3325    251    221            Q           2606    42932 /   reportes_docente FK_04e07cccc09fa4807b4b1d29822    FK CONSTRAINT     �   ALTER TABLE ONLY public.reportes_docente
    ADD CONSTRAINT "FK_04e07cccc09fa4807b4b1d29822" FOREIGN KEY (maestro) REFERENCES public.personal(id_personal);
 [   ALTER TABLE ONLY public.reportes_docente DROP CONSTRAINT "FK_04e07cccc09fa4807b4b1d29822";
       public          postgres    false    263    231    3335            *           2606    42727 ,   especialidade FK_0faeffdd5fe0d12b1425a6fe8a1    FK CONSTRAINT     �   ALTER TABLE ONLY public.especialidade
    ADD CONSTRAINT "FK_0faeffdd5fe0d12b1425a6fe8a1" FOREIGN KEY (carrera) REFERENCES public.carrera(id_carrera);
 X   ALTER TABLE ONLY public.especialidade DROP CONSTRAINT "FK_0faeffdd5fe0d12b1425a6fe8a1";
       public          postgres    false    225    3325    221            I           2606    42887 )   asistencia FK_1188517473cddd33f117cc98e0b    FK CONSTRAINT     �   ALTER TABLE ONLY public.asistencia
    ADD CONSTRAINT "FK_1188517473cddd33f117cc98e0b" FOREIGN KEY (grupo) REFERENCES public.grupo(id_grupo);
 U   ALTER TABLE ONLY public.asistencia DROP CONSTRAINT "FK_1188517473cddd33f117cc98e0b";
       public          postgres    false    3337    255    233            -           2606    42742 #   aula FK_1cf5e9656ccb0f19fc056d2219c    FK CONSTRAINT     �   ALTER TABLE ONLY public.aula
    ADD CONSTRAINT "FK_1cf5e9656ccb0f19fc056d2219c" FOREIGN KEY (edificio) REFERENCES public.edificio(id_edificio);
 O   ALTER TABLE ONLY public.aula DROP CONSTRAINT "FK_1cf5e9656ccb0f19fc056d2219c";
       public          postgres    false    227    3321    217            5           2606    42782 2   mat_solicitadas_esp FK_1edf7d79ad4ee24f1c6e4f57ae2    FK CONSTRAINT     �   ALTER TABLE ONLY public.mat_solicitadas_esp
    ADD CONSTRAINT "FK_1edf7d79ad4ee24f1c6e4f57ae2" FOREIGN KEY (periodo) REFERENCES public.periodos_escolare(id_periodo);
 ^   ALTER TABLE ONLY public.mat_solicitadas_esp DROP CONSTRAINT "FK_1edf7d79ad4ee24f1c6e4f57ae2";
       public          postgres    false    3327    223    237            +           2606    42732 ,   especialidade FK_236e2cc921e04753054bcaaca73    FK CONSTRAINT     �   ALTER TABLE ONLY public.especialidade
    ADD CONSTRAINT "FK_236e2cc921e04753054bcaaca73" FOREIGN KEY (periodo_inicio) REFERENCES public.periodos_escolare(id_periodo);
 X   ALTER TABLE ONLY public.especialidade DROP CONSTRAINT "FK_236e2cc921e04753054bcaaca73";
       public          postgres    false    225    3327    223            0           2606    42757 $   grupo FK_2cdb80755375381235cc6819a79    FK CONSTRAINT     �   ALTER TABLE ONLY public.grupo
    ADD CONSTRAINT "FK_2cdb80755375381235cc6819a79" FOREIGN KEY (periodo) REFERENCES public.periodos_escolare(id_periodo);
 P   ALTER TABLE ONLY public.grupo DROP CONSTRAINT "FK_2cdb80755375381235cc6819a79";
       public          postgres    false    233    223    3327            O           2606    42912 /   materias_carrera FK_2fbeabb40ac8f38303bf74e9eab    FK CONSTRAINT     �   ALTER TABLE ONLY public.materias_carrera
    ADD CONSTRAINT "FK_2fbeabb40ac8f38303bf74e9eab" FOREIGN KEY (materia) REFERENCES public.materia(id_materia);
 [   ALTER TABLE ONLY public.materias_carrera DROP CONSTRAINT "FK_2fbeabb40ac8f38303bf74e9eab";
       public          postgres    false    241    261    3345            7           2606    42792 &   materia FK_3601e68231b1990774f7f573a7d    FK CONSTRAINT     �   ALTER TABLE ONLY public.materia
    ADD CONSTRAINT "FK_3601e68231b1990774f7f573a7d" FOREIGN KEY (grupo) REFERENCES public.grupo(id_grupo);
 R   ALTER TABLE ONLY public.materia DROP CONSTRAINT "FK_3601e68231b1990774f7f573a7d";
       public          postgres    false    3337    233    241            /           2606    42752 '   personal FK_3eb7aa3e68a97771e585388b74c    FK CONSTRAINT     �   ALTER TABLE ONLY public.personal
    ADD CONSTRAINT "FK_3eb7aa3e68a97771e585388b74c" FOREIGN KEY (departamento) REFERENCES public.departamento(id_departamento);
 S   ALTER TABLE ONLY public.personal DROP CONSTRAINT "FK_3eb7aa3e68a97771e585388b74c";
       public          postgres    false    3323    219    231            E           2606    42862 0   seleccion_materia FK_53ca6082d461a79deeb693b1dba    FK CONSTRAINT     �   ALTER TABLE ONLY public.seleccion_materia
    ADD CONSTRAINT "FK_53ca6082d461a79deeb693b1dba" FOREIGN KEY (alumno) REFERENCES public.alumno(id_alumno);
 \   ALTER TABLE ONLY public.seleccion_materia DROP CONSTRAINT "FK_53ca6082d461a79deeb693b1dba";
       public          postgres    false    253    3355    251            1           2606    42772 $   grupo FK_6714ad4d55ca9b16d0bb3785262    FK CONSTRAINT     �   ALTER TABLE ONLY public.grupo
    ADD CONSTRAINT "FK_6714ad4d55ca9b16d0bb3785262" FOREIGN KEY (carrera) REFERENCES public.carrera(id_carrera);
 P   ALTER TABLE ONLY public.grupo DROP CONSTRAINT "FK_6714ad4d55ca9b16d0bb3785262";
       public          postgres    false    221    233    3325            K           2606    42892 1   cambio_contraseña FK_6b819d7ca80706adc3350b93288    FK CONSTRAINT     �   ALTER TABLE ONLY public."cambio_contraseña"
    ADD CONSTRAINT "FK_6b819d7ca80706adc3350b93288" FOREIGN KEY (id_personal) REFERENCES public.personal(id_personal);
 _   ALTER TABLE ONLY public."cambio_contraseña" DROP CONSTRAINT "FK_6b819d7ca80706adc3350b93288";
       public          postgres    false    257    3335    231            .           2606    42747 &   horario FK_72e0a532817df5a9a8257bc66d5    FK CONSTRAINT     �   ALTER TABLE ONLY public.horario
    ADD CONSTRAINT "FK_72e0a532817df5a9a8257bc66d5" FOREIGN KEY (periodo) REFERENCES public.periodos_escolare(id_periodo);
 R   ALTER TABLE ONLY public.horario DROP CONSTRAINT "FK_72e0a532817df5a9a8257bc66d5";
       public          postgres    false    229    223    3327            P           2606    42917 /   materias_carrera FK_797cf488329bdfe02ecd0d533fa    FK CONSTRAINT     �   ALTER TABLE ONLY public.materias_carrera
    ADD CONSTRAINT "FK_797cf488329bdfe02ecd0d533fa" FOREIGN KEY (especialidad) REFERENCES public.especialidade(id_especialidad);
 [   ALTER TABLE ONLY public.materias_carrera DROP CONSTRAINT "FK_797cf488329bdfe02ecd0d533fa";
       public          postgres    false    225    3329    261            M           2606    42907 .   grupos_paralelo FK_7a3d2409f3eb6080a38d25d49d7    FK CONSTRAINT     �   ALTER TABLE ONLY public.grupos_paralelo
    ADD CONSTRAINT "FK_7a3d2409f3eb6080a38d25d49d7" FOREIGN KEY ("paralelo de") REFERENCES public.grupo(id_grupo);
 Z   ALTER TABLE ONLY public.grupos_paralelo DROP CONSTRAINT "FK_7a3d2409f3eb6080a38d25d49d7";
       public          postgres    false    3337    233    259            ?           2606    42852 %   alumno FK_7d7c14494721c264c8c97f6bf78    FK CONSTRAINT     �   ALTER TABLE ONLY public.alumno
    ADD CONSTRAINT "FK_7d7c14494721c264c8c97f6bf78" FOREIGN KEY (seguimiento_alumno) REFERENCES public.seguimientos_alumno(id_seguimiento_alumno);
 Q   ALTER TABLE ONLY public.alumno DROP CONSTRAINT "FK_7d7c14494721c264c8c97f6bf78";
       public          postgres    false    3353    249    251            F           2606    42867 0   seleccion_materia FK_7ea352526b9106fd3a0eb0c6236    FK CONSTRAINT     �   ALTER TABLE ONLY public.seleccion_materia
    ADD CONSTRAINT "FK_7ea352526b9106fd3a0eb0c6236" FOREIGN KEY (periodo) REFERENCES public.periodos_escolare(id_periodo);
 \   ALTER TABLE ONLY public.seleccion_materia DROP CONSTRAINT "FK_7ea352526b9106fd3a0eb0c6236";
       public          postgres    false    253    223    3327            ;           2606    42817 9   autorizaciones_inscripcion FK_82ebc7d7798a6964018ca7ab9f9    FK CONSTRAINT     �   ALTER TABLE ONLY public.autorizaciones_inscripcion
    ADD CONSTRAINT "FK_82ebc7d7798a6964018ca7ab9f9" FOREIGN KEY (materia_afectada) REFERENCES public.materia(id_materia);
 e   ALTER TABLE ONLY public.autorizaciones_inscripcion DROP CONSTRAINT "FK_82ebc7d7798a6964018ca7ab9f9";
       public          postgres    false    241    3345    245            @           2606    42857 %   alumno FK_89a3e5c797030f7b291e8018933    FK CONSTRAINT     �   ALTER TABLE ONLY public.alumno
    ADD CONSTRAINT "FK_89a3e5c797030f7b291e8018933" FOREIGN KEY (grupo) REFERENCES public.grupo(id_grupo);
 Q   ALTER TABLE ONLY public.alumno DROP CONSTRAINT "FK_89a3e5c797030f7b291e8018933";
       public          postgres    false    251    3337    233            A           2606    42847 %   alumno FK_8ad8b9a23656ba2d5ea47b1c5cf    FK CONSTRAINT     �   ALTER TABLE ONLY public.alumno
    ADD CONSTRAINT "FK_8ad8b9a23656ba2d5ea47b1c5cf" FOREIGN KEY (permiso_comite) REFERENCES public.permisos_comite(id_permiso_comite);
 Q   ALTER TABLE ONLY public.alumno DROP CONSTRAINT "FK_8ad8b9a23656ba2d5ea47b1c5cf";
       public          postgres    false    251    235    3339            R           2606    42922 /   reportes_docente FK_8c34e631e14f1508c705f29f648    FK CONSTRAINT     �   ALTER TABLE ONLY public.reportes_docente
    ADD CONSTRAINT "FK_8c34e631e14f1508c705f29f648" FOREIGN KEY (periodo) REFERENCES public.periodos_escolare(id_periodo);
 [   ALTER TABLE ONLY public.reportes_docente DROP CONSTRAINT "FK_8c34e631e14f1508c705f29f648";
       public          postgres    false    263    3327    223            G           2606    42872 0   seleccion_materia FK_93505e02734abe51a558783f01b    FK CONSTRAINT     �   ALTER TABLE ONLY public.seleccion_materia
    ADD CONSTRAINT "FK_93505e02734abe51a558783f01b" FOREIGN KEY (materia) REFERENCES public.materia(id_materia);
 \   ALTER TABLE ONLY public.seleccion_materia DROP CONSTRAINT "FK_93505e02734abe51a558783f01b";
       public          postgres    false    3345    253    241            B           2606    42837 %   alumno FK_969eb834fe15aafa7d7b2b86cbc    FK CONSTRAINT     �   ALTER TABLE ONLY public.alumno
    ADD CONSTRAINT "FK_969eb834fe15aafa7d7b2b86cbc" FOREIGN KEY (especialidad) REFERENCES public.especialidade(id_especialidad);
 Q   ALTER TABLE ONLY public.alumno DROP CONSTRAINT "FK_969eb834fe15aafa7d7b2b86cbc";
       public          postgres    false    251    3329    225            4           2606    42777 .   permisos_comite FK_98ac318cb358974aed5dbd88169    FK CONSTRAINT     �   ALTER TABLE ONLY public.permisos_comite
    ADD CONSTRAINT "FK_98ac318cb358974aed5dbd88169" FOREIGN KEY (periodo) REFERENCES public.periodos_escolare(id_periodo);
 Z   ALTER TABLE ONLY public.permisos_comite DROP CONSTRAINT "FK_98ac318cb358974aed5dbd88169";
       public          postgres    false    223    3327    235            H           2606    42877 0   seleccion_materia FK_9a09254543fd3aabb81e4804f41    FK CONSTRAINT     �   ALTER TABLE ONLY public.seleccion_materia
    ADD CONSTRAINT "FK_9a09254543fd3aabb81e4804f41" FOREIGN KEY (requisito_materia) REFERENCES public.requisitos_materia(id_requisito_materia);
 \   ALTER TABLE ONLY public.seleccion_materia DROP CONSTRAINT "FK_9a09254543fd3aabb81e4804f41";
       public          postgres    false    243    3347    253            2           2606    42762 $   grupo FK_9baf28dda0116723cb411fe692c    FK CONSTRAINT     �   ALTER TABLE ONLY public.grupo
    ADD CONSTRAINT "FK_9baf28dda0116723cb411fe692c" FOREIGN KEY (maestro) REFERENCES public.personal(id_personal);
 P   ALTER TABLE ONLY public.grupo DROP CONSTRAINT "FK_9baf28dda0116723cb411fe692c";
       public          postgres    false    233    3335    231            L           2606    42897 1   cambio_contraseña FK_a2fd4b3e0949a2f384bf2afa80e    FK CONSTRAINT     �   ALTER TABLE ONLY public."cambio_contraseña"
    ADD CONSTRAINT "FK_a2fd4b3e0949a2f384bf2afa80e" FOREIGN KEY (tipo_personal) REFERENCES public.personal(id_personal);
 _   ALTER TABLE ONLY public."cambio_contraseña" DROP CONSTRAINT "FK_a2fd4b3e0949a2f384bf2afa80e";
       public          postgres    false    257    3335    231            8           2606    42802 1   requisitos_materia FK_aff70e48326982b8826b00fa9ad    FK CONSTRAINT     �   ALTER TABLE ONLY public.requisitos_materia
    ADD CONSTRAINT "FK_aff70e48326982b8826b00fa9ad" FOREIGN KEY (materia_destino) REFERENCES public.materia(id_materia);
 ]   ALTER TABLE ONLY public.requisitos_materia DROP CONSTRAINT "FK_aff70e48326982b8826b00fa9ad";
       public          postgres    false    3345    243    241            (           2606    42717 '   edificio FK_ba3802a8226f0c1f9b208ca6f01    FK CONSTRAINT     �   ALTER TABLE ONLY public.edificio
    ADD CONSTRAINT "FK_ba3802a8226f0c1f9b208ca6f01" FOREIGN KEY (area) REFERENCES public.area(id_area);
 S   ALTER TABLE ONLY public.edificio DROP CONSTRAINT "FK_ba3802a8226f0c1f9b208ca6f01";
       public          postgres    false    215    217    3319            =           2606    42822 '   reticula FK_ca60347b97fef80bda1f062e84c    FK CONSTRAINT     �   ALTER TABLE ONLY public.reticula
    ADD CONSTRAINT "FK_ca60347b97fef80bda1f062e84c" FOREIGN KEY (carrera) REFERENCES public.carrera(id_carrera);
 S   ALTER TABLE ONLY public.reticula DROP CONSTRAINT "FK_ca60347b97fef80bda1f062e84c";
       public          postgres    false    221    247    3325            <           2606    42812 9   autorizaciones_inscripcion FK_ca8bc8fe35cda6a6d9a13731d2e    FK CONSTRAINT     �   ALTER TABLE ONLY public.autorizaciones_inscripcion
    ADD CONSTRAINT "FK_ca8bc8fe35cda6a6d9a13731d2e" FOREIGN KEY (periodo) REFERENCES public.periodos_escolare(id_periodo);
 e   ALTER TABLE ONLY public.autorizaciones_inscripcion DROP CONSTRAINT "FK_ca8bc8fe35cda6a6d9a13731d2e";
       public          postgres    false    3327    245    223            N           2606    42902 .   grupos_paralelo FK_cb03c0c2e09f2d01c328aa11d36    FK CONSTRAINT     �   ALTER TABLE ONLY public.grupos_paralelo
    ADD CONSTRAINT "FK_cb03c0c2e09f2d01c328aa11d36" FOREIGN KEY (materia) REFERENCES public.materia(id_materia);
 Z   ALTER TABLE ONLY public.grupos_paralelo DROP CONSTRAINT "FK_cb03c0c2e09f2d01c328aa11d36";
       public          postgres    false    241    3345    259            J           2606    42882 )   asistencia FK_ce005e8fca63662798ab95ed39c    FK CONSTRAINT     �   ALTER TABLE ONLY public.asistencia
    ADD CONSTRAINT "FK_ce005e8fca63662798ab95ed39c" FOREIGN KEY (periodo) REFERENCES public.periodos_escolare(id_periodo);
 U   ALTER TABLE ONLY public.asistencia DROP CONSTRAINT "FK_ce005e8fca63662798ab95ed39c";
       public          postgres    false    255    223    3327            6           2606    42787 2   mat_solicitadas_esp FK_ce9627c03738c66759ca06b8a22    FK CONSTRAINT     �   ALTER TABLE ONLY public.mat_solicitadas_esp
    ADD CONSTRAINT "FK_ce9627c03738c66759ca06b8a22" FOREIGN KEY (permiso_comite) REFERENCES public.permisos_comite(id_permiso_comite);
 ^   ALTER TABLE ONLY public.mat_solicitadas_esp DROP CONSTRAINT "FK_ce9627c03738c66759ca06b8a22";
       public          postgres    false    235    237    3339            C           2606    42832 %   alumno FK_d02008dc5b6f6f59732d0b0f814    FK CONSTRAINT     �   ALTER TABLE ONLY public.alumno
    ADD CONSTRAINT "FK_d02008dc5b6f6f59732d0b0f814" FOREIGN KEY (reticula) REFERENCES public.reticula(id_reticula);
 Q   ALTER TABLE ONLY public.alumno DROP CONSTRAINT "FK_d02008dc5b6f6f59732d0b0f814";
       public          postgres    false    251    3351    247            S           2606    42927 /   reportes_docente FK_ebd95a51a749565e7d8ae166a63    FK CONSTRAINT     �   ALTER TABLE ONLY public.reportes_docente
    ADD CONSTRAINT "FK_ebd95a51a749565e7d8ae166a63" FOREIGN KEY (grupo) REFERENCES public.grupo(id_grupo);
 [   ALTER TABLE ONLY public.reportes_docente DROP CONSTRAINT "FK_ebd95a51a749565e7d8ae166a63";
       public          postgres    false    3337    263    233            D           2606    42842 %   alumno FK_ec5938dd2e229da47a8cb4f7f67    FK CONSTRAINT     �   ALTER TABLE ONLY public.alumno
    ADD CONSTRAINT "FK_ec5938dd2e229da47a8cb4f7f67" FOREIGN KEY (autorizacion_inscripcion) REFERENCES public.autorizaciones_inscripcion(id_autorizacion_inscripcion);
 Q   ALTER TABLE ONLY public.alumno DROP CONSTRAINT "FK_ec5938dd2e229da47a8cb4f7f67";
       public          postgres    false    245    251    3349            )           2606    42722 &   carrera FK_f3b7d9321376123df9e3954d59a    FK CONSTRAINT     �   ALTER TABLE ONLY public.carrera
    ADD CONSTRAINT "FK_f3b7d9321376123df9e3954d59a" FOREIGN KEY (departamento) REFERENCES public.departamento(id_departamento);
 R   ALTER TABLE ONLY public.carrera DROP CONSTRAINT "FK_f3b7d9321376123df9e3954d59a";
       public          postgres    false    221    3323    219            ,           2606    42737 ,   especialidade FK_f72604977b8687637d6f047ff78    FK CONSTRAINT     �   ALTER TABLE ONLY public.especialidade
    ADD CONSTRAINT "FK_f72604977b8687637d6f047ff78" FOREIGN KEY (periodo_termino) REFERENCES public.periodos_escolare(id_periodo);
 X   ALTER TABLE ONLY public.especialidade DROP CONSTRAINT "FK_f72604977b8687637d6f047ff78";
       public          postgres    false    225    3327    223            9           2606    42797 1   requisitos_materia FK_f96eb4dc49ae044598e90f8715a    FK CONSTRAINT     �   ALTER TABLE ONLY public.requisitos_materia
    ADD CONSTRAINT "FK_f96eb4dc49ae044598e90f8715a" FOREIGN KEY (materia_origen) REFERENCES public.materia(id_materia);
 ]   ALTER TABLE ONLY public.requisitos_materia DROP CONSTRAINT "FK_f96eb4dc49ae044598e90f8715a";
       public          postgres    false    3345    243    241            3           2606    42767 $   grupo FK_fa1a9ac66ee7fa18bbcbb323e07    FK CONSTRAINT     �   ALTER TABLE ONLY public.grupo
    ADD CONSTRAINT "FK_fa1a9ac66ee7fa18bbcbb323e07" FOREIGN KEY (horario) REFERENCES public.horario(id_horario);
 P   ALTER TABLE ONLY public.grupo DROP CONSTRAINT "FK_fa1a9ac66ee7fa18bbcbb323e07";
       public          postgres    false    229    233    3333            :           2606    42807 1   requisitos_materia FK_fd0cf692bba459cfd6b094bed23    FK CONSTRAINT     �   ALTER TABLE ONLY public.requisitos_materia
    ADD CONSTRAINT "FK_fd0cf692bba459cfd6b094bed23" FOREIGN KEY (carrera) REFERENCES public.carrera(id_carrera);
 ]   ALTER TABLE ONLY public.requisitos_materia DROP CONSTRAINT "FK_fd0cf692bba459cfd6b094bed23";
       public          postgres    false    243    3325    221                  x������ � �      �      x�3�t�IM.)�LNԇ���l�=... �	            x������ � �      �   3   x�3�tu5���KT��/*I�46��IL�/J,�/�����t�4����� 	SD            x������ � �            x������ � �      �   M   x�3�4��v6202���KO��L-�LT�,.I�M,Vp��-(-IL���K�I-���-��ibdfbl�i����� ���      �   #   x�3�tN�+)�WHIUp��-(-��4����� u	�      �      x�3�t�IM.)���LN�4����� F��      �      x������ � �      �      x������ � �            x������ � �      �      x������ � �      �      x������ � �      �      x������ � �            x������ � �      �      x������ � �      �      x������ � �      �      x������ � �            x������ � �      �      x������ � �            x������ � �            x������ � �      	      x������ � �      �      x������ � �     
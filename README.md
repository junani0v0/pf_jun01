# 포토 폴리오

> ## 프로젝트 소개
junani0v0의 개인 포토폴리오 프로젝트   
배포 URI : [https://bit.ly/4eS3BuP](https://bit.ly/3WuyPB3)



> ## 기능 요구 사항
### 1.	회원가입
  - 회원 가입 시 폼에서 다음과 같은 제약 사항이 있습니다.   
    - [ ] 아이디는 공백 또는 빈 칸일 수 없고 4 ~ 20자의 영어 소문자 + 숫자만 사용 가능합니다.
    - [ ] 이미 존재하는 아이디로는 가입할 수 없습니다.
    - [ ] ajax를 활용하여 아이디 입력창에서 나오면 DB값을 비교하여 중복 확인
    - [ ] 비밀번호는 8~16자의 영문 대/소문자, 숫자를 사용하고, 특수문자를 1개 이상 포함해야 합니다.
    - [ ] 이름은 공백 또는 빈 칸일 수 없습니다.
    - [ ] 이름은 영어와 한글만 사용가능합니다
    - [ ] 이름은 최대 20자까지 사용할 수 있습니다
    - [ ] 이메일은 공백 또는 빈 칸일 수 없고 이메일 형식을 준수하여야 합니다.(aaa@aaa.aaa)
    - [ ] 이메일은 공백 또는 빈 칸일 수 없습니다.
    - [ ] 이메일 최대 길이는 20자 까지입니다
    - [ ] 회원가입 유효성검사가 모두 참일 경우에만 회원가입 버튼이 활성화됩니다
    - [ ] 패스워드는 DB에 암호화 후 저장되어야 합니다.
      - [ ] bcrypt 라이브러리를 활용한 DB 비밀번호 저장 암호화 
  - 사용자 이메일 유효 여부를 인증해야 합니다
    - [ ] 인증 링크를 포함한 이메일을 보내야 합니다.
    - [ ] 사용자가 인증 링크를 클릭한 후 인증 여부가 DB에 반영되어야 합니다.
    - [ ]	이메일 발송용 이메일은 Jasypt 라이브러리로 이메일 & 비밀번호 암호화하야 합니다.
    - [ ]	암호화한 값을 복원하는 복구화 키는 프로젝트가 아닌 tomcat 환경변수로 Jasypt 복구화 키 등록하여 보안에 신경씁니다.
          
### 2.	로그인
  - [ ]	ID 조회
  - [ ]	사용자 입력 ID를 DB에 조회 유효성 확인
  - [ ]	비밀번호 조회
  - [ ]	아이디 저장(추가예정)
  - [ ]	아이디, 비밀번호 찾기 & 비밀번호 변경(추가예정)
  - [ ]	이메일 인증 사용자만 로그인 가능하도록 제한
        
### 3.	로그아웃
  - [ ]	로그아웃시 세션 삭제
        
### 4.	배포
  - [ ]	src/main/resource를 local, dev, common로 구분
  - [ ]	config.properties로 local과 배포(dev)상태에서 각각의 첨부파일 저장 경로 및 인증이메일 주소 설정
        
### 5.	테스트 케이스
  - [ ]	JUnit5를 활용하여 단위테스트 진행
        
### 6.	게시판
  - [ ]	filter를 활용하여 게시판 접근 제한
    - [ ]	세션으로 로그인 여부 판단
    - [ ]	로그인 시에만 접근 가능
    - [ ]	비로그인 시 로그인 화면으로 이동
    - [ ]	로그인 성공 후 이전 요청으로 리다이렉트
  - [ ]	페이징
    - [ ]	1페이지와 마지막 페이지에서 각각 이전, 다음 버튼 숨기기
    - [ ]	한 페이지 당 출력 게시글 10개
    - [ ]	페이징 네비게이션 바 한 페이지 당 10개씩 출력
  - [ ]	게시글 리스트 조회
    - [ ]	게시물 번호 DB게시글 번호가 아닌 전체 개수 기준으로 변경예정
    - [ ]	첨부파일 여부, 댓글, 좋아요 & 싫어요 개수 표시
  - [ ]	게시글 작성(첨부파일)
    - [ ]	trumbowyg 텍스트 에디터를 이용한 게시물 내용 입력
    - [ ]	첨부파일 등록 (최대 3개)
    - [ ]	첨부파일 용량 제한(10MB)
  - [ ]	게시글 상세 조회 
    - [ ]	게시글 좋아요 & 싫어요 DB 반영
    - [ ]	게시글 작성자만 게시글 수정/삭제 가능 & 아닐 경우 숨기기
    - [ ]	댓글, 대댓글(예정) 기능 & 작성자가 같아야만 수정/삭제 가능
    - [ ]	첨부파일 단일 다운로드 & zip파일로 일괄 다운로드 기능
  - [ ]	게시글 수정
    - [ ]	ajax를 활용하여 즉각 반영 첨부파일 삭제/추가 (최대 3개 유지)
  - [ ]	게시글 삭제
    - [ ]	게시글 첨부파일 삭제
    - [ ]	게시글 댓글 삭제
    - [ ]	게시글 좋아요 & 싫어요 삭제
    - [ ]	게시글 작성자만 게시글 삭제 가능
       
### 7. 다국어
 - [ ] i18n를 활용하여 messageSource.propertiy로 다국어 기능 구현


> ## 사용 기술 스택
  Front-End 
  - HTML5/CSS3, JS ES6, JQuery3.7.1 
  
  Back-End 
  - Spring Version : 5.3.32
  - Java Version : OpenJDK 11.0.2
  
  Database  
  - MyBatis 3.5.15
  - MySQL
  
  개발 환경 
  - Eclipse IDE 4.31.0
  - Apache Tomcat 9.0.87 
  - Maven 3.9.6
    
  배포
  - AWS EC2
  - AWS RDS
  - Nginx
  
  Tool
  - GitHub
  - MobaXterm
  - FileZilla
  - Sourcetree
  - Docker
  - DBeaver
  - Visual Studio Code
  - Notion
    
> ## Trouble shooting 정리
https://junai0v0.tistory.com/category/%EC%97%90%EB%9F%AC%20%EB%AA%A8%EC%9D%8C

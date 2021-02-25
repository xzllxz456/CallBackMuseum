-- 관람 후기 TB

CREATE TABLE MU_REVIEW (
    REV_IDX NUMBER(10) PRIMARY KEY,     -- 글 번호
    REV_CATEGORY VARCHAR2(20),          -- 후기 카테고리 (전시, 행사, 공연)
    REV_WRITER VARCHAR2(50),            -- 글쓴이 아이디
    REV_SUBJECT VARCHAR2(100),          -- 제목
    REV_CONTENT CLOB,                   -- 내용
    REV_WRITE_DATE DATE,                -- 작성일   
    REV_FILE_NAME VARCHAR2(100),        -- 첨부파일명
    REV_ORI_NAME VARCHAR2(100),         -- 원 파일명
    REV_HIT NUMBER(10),                 -- 조회수
    REV_DEL_STATUS VARCHAR2(20)         -- 삭제시 'DEL' 입력
);   
    
    
CREATE SEQUENCE MU_REV_SEQ NOCACHE;      -- 글번호 시퀀스 자동생성



-- MU_REVIEW 테이블에 들어갈 데이터 insert문

-- 1)
INSERT INTO MU_REVIEW
    (   REV_IDX,
        REV_CATEGORY,
        REV_WRITER,
        REV_SUBJECT,
        REV_CONTENT,
        REV_WRITE_DATE,
        REV_FILE_NAME,
        REV_ORI_NAME,
        REV_HIT
    )
VALUES 
    (   MU_REV_SEQ.NEXTVAL,
        '전시',
        'hana',
        '도슨트님 아주 멋지세요 !!!',
        '1월 10일 오후 친구들과

썩 기대하지 않고 간 미술관인데

의외로 꽉 찬 전시에 놀랐습니다.

풍부하게 설명해 주신 도슨트님의 덕분이 아니었나 생각합니다.



입장료도 가볍고 직원들도 친절하고

다음에 지나는 길이 있다면 다시 들러보고 싶습니다.

봄이 되면 일부러 다시 들를 수도 있겠죠?



많은 사람들이

미술관을 홈플러스 가듯이 가는 날이 왔으면 좋겠습니다.



감사합니다.',
        '2018/01/10',
        'review_exhib_01.jpg',
        'review_exhib_01.jpg',
        865
    )
;


----------------------------------------------------------------------------------------
-- 2)
INSERT INTO MU_REVIEW
    (   REV_IDX,
        REV_CATEGORY,
        REV_WRITER,
        REV_SUBJECT,
        REV_CONTENT,
        REV_WRITE_DATE,
        REV_FILE_NAME,
        REV_ORI_NAME,
        REV_HIT
	)
VALUES 
    (   MU_REV_SEQ.NEXTVAL,
        '행사',
        'mino',
        '단원 김홍도의 예술세계와 현대적 확장성',
        '오늘 세미나를 다녀오면서 시작부터 이해가 되지 않은 부분들일 많아 글을 올립니다.

오전 9:30 에 안산예술의전당에서 출발하는 버스를 타고 갔는데, 9;30 출발버스가 있었고 10;30 출발하는 버스도 있었더라구요.

공지가 어떻게 된건지 같이 세미나를 들으러 가는 일행들끼리도 헷갈려서 출발을 다르게 했고,

11시에 도착하니 갑자기 2시간동안 자유시간을 주면서 점심을 각자 알아서 먹고 소강당으로 모이라고 하더군요.

설명에도 없던 자유시간 2시간은 대체 왜 준 것이며, 소강당으로 찾아가는 길에도 표시나 안내가 제대로 되어있지

않아서 한참을 헤매다가 그곳에서 안내하시는 분께 소강당 가는 방법을 물으니 단원에서 온 사람들이냐고 하면서 오늘 소강당찾는 문의가 너무 많아 목이 쉴 것 같다고 하면서 안내를 하더라구요.

얼마나 대충 준비를 한 것인지 이런 경로만 봐도 알 수 있었습니다.

세미나가 시작이 되었는데 처음부터 정동채 전 문화체육관광부장관이 올라오더니 나눠준 세미나자료집에 나온 내용을

처음부터 끝까지 5장만 딱 읽고 내려가고, 다른 강의하러 온 분들도 급하게 연락을 받아서 제대로 강의 준비를 못했다고 하면서 시작을 하고, 떠 어떤 강의하시는 분은 본인이 왜 여기에 와서 이런 강의를 하는지도 모르겠다고 하시며 대충 얘기를 하시다가 이만 끝내겠습니다. 하고 강의를 끝냇습니다.

중간에 쉬는 시간을 쉬고보니 세미나를 참석한 인원의 3/1은 다 돌아간 상황이였습니다.

단원국제세미나를 어떻게 이렇게 대충 준비해서 할 수 있는지 이해가 되지않았고, 제대로 준비되지 않은 세미나를 들으며 아쉬움이 남았습니다.',
        '2018/03/05',
        'review_event_01.jpg',
        'review_event_01.jpg',
        780
    )
;


----------------------------------------------------------------------------------------
-- 3)
INSERT INTO MU_REVIEW
    (   REV_IDX,
        REV_CATEGORY,
        REV_WRITER,
        REV_SUBJECT,
        REV_CONTENT,
        REV_WRITE_DATE,
        REV_FILE_NAME,
        REV_ORI_NAME,
        REV_HIT
	)
VALUES 
    (   MU_REV_SEQ.NEXTVAL,
        '공연',
        'jina',
        '시립국악단 56회 정기 연주회',
        '그간 사용했던 달맞이 극장이 아닌 해돋이 대극장에서 대전시립연정국악원과 협연.

화려한 만남 공연에 갔다



대형 가변 무대 전체를 연주자석으로 가득 배치해 오케스트라 규모에 우선 압도된다

단원들이 입장하고 우측으로 더블베이스3, 트럼본1, 섹소폰1, 클라리넷1,호른, 신디, 드럼 양악기와 순수 우리 국악기로 채워져

연주자가 무려 110명 초 대형급

그간 다양한 국악단 공연을 관람했지만 이렇게 큰 규모는 첫 경험이다



오프닝으로 故 백대웅선생님 편곡 남도 아리랑 변주곡이 반갑다

선생님께서 우리 음악에 기여한 업적이 많으신 걸 잘 알기에 가슴에 더 와 닿고 애쓰심에에 자연스럽게 머리가 숙여졌다.



판소리 춘향가 대목 사랑가를 남녀 소릿꾼의 퍼포먼스

귀에 익은 경기민요 메들리를 두 명의 여성 소릿꾼 협연

남창가곡 청산리벽계수

조금 전까지 무대와는 전혀 다른 잔잔한 달빛을 연출한 듯 고혹한 코발트빛 조명에 신디사이저, 대금의 간결한 사운드에 어우러진

소리꾼의 긴 호흡 正歌가 그렇게 기품있고 멋진 음악이었는지 새로운 발견으로 기회되면 정가를 꼭 배우고 싶단 욕구가 솟는다



오케스트라 뒷면에 영화가 상영되고 로키, 캐러비안 해적 영화음악OST가 멋지다

앵콜곡 아리랑 판타지를 듣는데 하도 전화가 와 다 듣지 못하고 중간 나와야 했다

다만 아쉬움

그 좋은 공연관람 기본 예절 조차도 준비 되지 않은 극 소수 관객 행태에 부끄럽고 속상했다.



그럼에도 불구하고

안산시립국악단, 대전시립연정국악단 지휘자, 연주자들, 솔리스트, 소릿꾼들의 열정적인 연주가 반짝반짝 빛나고

많은 시간 준비하고 노력과 공들인 공연이란걸 객석에 앉은 내게 고스란히 전해와

참 멋지고 참 훌륭하고 참 감사한 음악회였다.',
        '2018/05/20',
        'review_concert_01.jpg',
        'review_concert_01.jpg',
        512
    )
;


----------------------------------------------------------------------------------------
-- 4)
INSERT INTO MU_REVIEW
    (   REV_IDX,
        REV_CATEGORY,
        REV_WRITER,
        REV_SUBJECT,
        REV_CONTENT,
        REV_WRITE_DATE,
        REV_FILE_NAME,
        REV_ORI_NAME,
        REV_HIT
	)
VALUES 
    (   MU_REV_SEQ.NEXTVAL,
        '전시',
        'dam0',
        '수만가지색 오만가지 장미를 관람하고',
        '이번 전시는 아쉬운 마음이 크다. 너무 경색되고 획일화되고 밋밋하여 예술의 전당이 되어야 할 곳에 정작 예술이 없다는 느낌이 든다. 나만 이런 느낌일까???



단지 운영하는 주체가 자기 밥그릇 놓고 싶지 않아 명명만 유지 한체 국민의 세금만 비효율적으로

비 예술적으로 운영되고 낭비되고있는 느낌이다.



주말에 아이들 손잡고 가는 미술관 그것도 입장료까지 내고 가는 미술관에 고등학교 대학교 아이들도

관람하는 재미가 하나도 없고 아무 감명도 받지 못했다면 이것도 예술인가 하는 느낌이 든다.

그저 휭하니 돌다나온다. 느낌을 물으면 뭘요?? 한다.



너무나 아쉽다.

Open mind로 초대 작가들, 아마추어 작가들의 전시의 장으로 거듭나는것이 더욱신선하고 주말에 미술관 가는 재미가 한층 많을것으로 본다.



수만가지색 오만가지 장미의 작가에게 탓하는게 아니고 너무 획일적인 작품의 일색이라

그 공간이 너무 경직되고 반짝이는 호기심이 결여된 그냥 2000원 입장료가 아깝다는 느낌을 떨쳐버릴수가 없다.



예술은 모든 행위가 예술이라는 것엔 동감하는데 감명없는 예술은 그져 밍밍하고 허접하기 그지 없는 관람 시간 낭비라는데

아쉬움이 든다.



그 시간의 알참을 콜백뮤지엄에서 만들어 줬으면 한다.



나만 이럴까????',
        '2018/06/08',
        'review_exhib_02.jpg',
        'review_exhib_02.jpg',
        409
    )
;


----------------------------------------------------------------------------------------
-- 5)
INSERT INTO MU_REVIEW
    (   REV_IDX,
        REV_CATEGORY,
        REV_WRITER,
        REV_SUBJECT,
        REV_CONTENT,
        REV_WRITE_DATE,
        REV_FILE_NAME,
        REV_ORI_NAME,
        REV_HIT
	)
VALUES 
    (   MU_REV_SEQ.NEXTVAL,
        '공연',
        'yuna',
        '꿈다락 토요문화학교 후기',
        '첫아이와 오랜만에 문화 공연을 위한 외출을 했다. 동생들이 있어 첫아이와의 시간을 내기가 좀처럼 쉽지 않은데 좋은 프로그램을 만나게 되어 즐거운 시간을 가졌다. 함께 본 공연은 <걸어서 하늘까지>라는 연극이었다.
캐나다의 dynamo 극단팀의 공연이었다. 오랜만에 보는 공연이라 춤인듯, 발레인듯, 연극인듯 다소 어렵기도 했지만 배우들의 열정이 느껴지는 무대였다. 변화되는 화면과 함께 듣는 음악은 너무 좋았다. 공연후 진행된 점심과 강의는 연극을 이해하는데 많은 도움이 되었다. 다음 공연이 기대된다.^^ 이예* 엄마와 연극을 보았다. 작년에 사촌 언니들과 본 뮤지컬이 너무 좋아 또 보고 싶었는데 엄마가 공연을 보러 가자고 해서 기대를 많이 했다. 연극이라고 해서 대사가 나오는 것만 생각했는데 아니었다. 내용이 다 이해되는 것은 아니었지만 끝까지 보니 나름 재미도 있었다. 공연이 끝나고 강의를 듣는다고 해서 지루하겠다고 생각했는데 강사선생님 얘기가 재미있었다. 연극에 대해 많이 이해하게 된것 같다. 공연후 엄마랑 마트에 가서 쇼핑도 하고 음료도 마시고 이런저런 이야기도 나눌수 있어 좋았다. 동생들 없이 엄마랑만 함께여서 더 좋았다.^^',
        '2018/08/22',
        'review_concert_02.jpg',
        'review_concert_02.jpg',
        378
    )
;



----------------------------------------------------------------------------------------
-- 6)
INSERT INTO MU_REVIEW
    (   REV_IDX,
        REV_CATEGORY,
        REV_WRITER,
        REV_SUBJECT,
        REV_CONTENT,
        REV_WRITE_DATE,
        REV_FILE_NAME,
       	REV_ORI_NAME,
        REV_HIT
	)
VALUES 
    (   MU_REV_SEQ.NEXTVAL,
        '공연',
        'sanghee',
        '<걸어서 하늘까지> 관람 후기',
        '공연시작할때부터 끝까지 있었던 소품,배경은 달랑 의자하나. 그러나 그 의자가 어떨땐 피아노가 되기도 하고 공원 벤치가 되기도 한다. 그 의자에 앉아서 과거를 되돌아보고 많은 경험을 하는 소녀, 그리고 배경으로 나오는 영상, 화려한 몸동작의 무용수들이 돋보였다. 그 모든 극을 도와주는 음악의 역할도 멋졌다. 때로는 잔잔했다가도 강렬한 연주가 나오기도 했다. 이 모든 것이 합해진 극 <걸어서 하늘까지>, 재밌게 관람한것 같다.',
        '2018/10/23',
       	null,
        null,
        340
    )
;


----------------------------------------------------------------------------------------
-- 7)
INSERT INTO MU_REVIEW
    (   REV_IDX,
        REV_CATEGORY,
        REV_WRITER,
        REV_SUBJECT,
        REV_CONTENT,
        REV_WRITE_DATE,
        REV_FILE_NAME,
       	REV_ORI_NAME,
        REV_HIT
	)
VALUES 
    (   MU_REV_SEQ.NEXTVAL,
        '공연',
        'sanghee',
        '2018 꿈다락 토요 문화학교 "앙상불 디토" 관람 후기',
        '꿈다락 토요 문화학교 2번째 시간이다..친구와 함께 하는 시간이 즐겁다..엄마는 용재오닐의 연주를 들을수 있다면서 엄청 기대를 했다. 나도 보고 싶어진다. 악기마다 다른 소리를 낸다.마치 사람마다 성격이 다르듯이 악기도 자기만의 소리를 내는 것이 신기하다. 나는 오늘 본 악기 중에 어떤 악기와 닮았을까. 그리고 도대체 연주자들은 얼마나 연습을 한 걸까. 궁금하다. 맛있는 토스트를 먹을 수 있어서 좋았고 연주가 끝나고 팬들에게 싸인을 해주는 모습이 정말 신기 했다.. 나는 꿈다락 2기에 친구와 함께 등록 했다. 다음 공연이 기대가 된다 . 박소윤 이상하게도 처음 공연을 들을 때는 잠이 온다. 안 자려고 해도 하지만 두번째 공연부터는 잠도 안오고 음악 소리도 들린다. 연주가 끝나고 연주자들에게 싸인을 받는 것을 몰랐다. 진작 알았으면 나도 줄을 먼저 썼을 텐데 아쉽다... 강은희 아이들과 함께 꿈다락 토요 문화학교에 참가 할 수 있어서 즐거웠다. 나 역시도 시간을 내서 클래식공연을 관람하는 것이 쉽지는 않았다. 처음에는 아이들 보여 주려고 신청을 했는데 시간이 지나고 보니 나 역시도 아는게 없었던 같다. 이번 꿈다락 토요 문화학교에서 가장 좋았는던 점은 공연 전 해설을 듣고 공연을 볼 수 있어서 였다.. 어렵게만 느껴지던 클래식이 한층더 편안하게 다가 왔다.. 다양한 공연의 장르에 2기가 벌써 기다려 진다...',
        '2018/10/23',
       	null,
        null,
        320
    )
;


----------------------------------------------------------------------------------------
-- 8)
INSERT INTO MU_REVIEW
    (   REV_IDX,
        REV_CATEGORY,
        REV_WRITER,
        REV_SUBJECT,
        REV_CONTENT,
        REV_WRITE_DATE,
        REV_FILE_NAME,
       	REV_ORI_NAME,
        REV_HIT
	)
VALUES 
    (   MU_REV_SEQ.NEXTVAL,
        '행사',
        'hana',
        '정영두 안무가님과 함께한 시간',
        '꿈다락 프로그램 중에 가장 낯선 주제가 "몸"이다. 그만큼 내가 내 몸을 움직이거나 가꾸는데 관심이 없고 게다가 몸치인 까닭도 있다. 게다가 저번 꿈다락에는 일이 있어 참여를 못했던 탓에 조금 긴장을 하고 참여했다. 역시나 안무가님은 우리의 몸을 툴툴 털어버리는 동작으로 강의를 시작하셨다. 그런데... 아주 단순한 그 동작에 그냥 기분이 좋아지고 웃음이 났다. 카메라가 몇 대 있었지만 별로 신경쓰이지도 않고 그냥 몸을 탁탁 털어대면서 움직였다. 그러다가 가장 어색한 조별 모임이 시작되고 동작을 만들었다. 같은 동작을 계속 이어 가면서 어렵지 않게 동작을 짰는데... 왠걸 다리가 후들거리는 것이다. 어찌나 힘이 들던지 일주일이나 통증이 갔다. 그리고 공연을 보면서 느낀 건 내가 내 몸을 참 몰랐고 움직이지 않았다는 것을 깨달았다. 미세한 근육의 움직임을 보면서 감탄했고 내 몸을 바라보고 스트레칭이라도 한 적이 언제인지 까마득해서 놀랐다. 꿈다락은 일상에 작은 동요를 갖게하는 힘이 있다. 그래서 늘 고맙고 감사하다.',
        '2019/2/23',
       	null,
        null,
        320
    )
;


----------------------------------------------------------------------------------------
-- 9)
INSERT INTO MU_REVIEW
    (   REV_IDX,
        REV_CATEGORY,
        REV_WRITER,
        REV_SUBJECT,
        REV_CONTENT,
        REV_WRITE_DATE,
        REV_FILE_NAME,
       	REV_ORI_NAME,
        REV_HIT
	)
VALUES 
    (   MU_REV_SEQ.NEXTVAL,
        '공연',
        'yunhee',
        '3분47초, 짧은 사연이 읽히는 시간',
        '공연시작전 예술특강은 음식으로 치면 에피타이저 즈음 되는거같아요 본식사를 하기전 입맛을 돋궈주는 ...그런 기본 적인 생각들을 알려주고 배려해주고.... 그래서 공연에 더 집중 하게 되는 매력 이있네요 공연이 이해가 되지않을때가 대부분이지만 특강을 들으며... 가온맘님 후기를 보며 배우고 있어요 아직은 배우들의 열정과 탄탄한 연기력을 보며 감탄사밖에 표현할줄 모르지만 꾸준히 참석하다보면 점차 이해도 도 높아지겠지요 꿈다락에 초대해주셔서 감사합니다',
        '2019/03/01',
       	null,
        null,
        420
    )
;


----------------------------------------------------------------------------------------
-- 10)
INSERT INTO MU_REVIEW
    (   REV_IDX,
        REV_CATEGORY,
        REV_WRITER,
        REV_SUBJECT,
        REV_CONTENT,
        REV_WRITE_DATE,
        REV_FILE_NAME,
       	REV_ORI_NAME,
        REV_HIT
	)
VALUES 
    (   MU_REV_SEQ.NEXTVAL,
        '전시',
        'jinyoung',
        '미샤마이스키',
        '연주회 전에 미샤마이스키에 관한 여러 이야기를 듣고 미샤마이스키를 만나니 그가 입은옷과 그가 걸친 악세사리가 먼저 눈에 들어왔다. 우리나라를 위한 배려일까 백색의 의상은 웬지 한국의 전통을 배려해 입은듯 하고 딸과의 연주는 많은 생각을 하게 한다. 저 연주를 하기위해 아빠와 딸이 얼마나 많은 시간을 함께 했을까하는 ..... 모두가 둘의 쏟아내는 음율에 앵콜을 외치고 나또한도 열렬히 박수를 치고 있었다.',
        '2019/04/23',
       	null,
        null,
        220
    )
;


----------------------------------------------------------------------------------------
-- 11)
INSERT INTO MU_REVIEW
    (   REV_IDX,
        REV_CATEGORY,
        REV_WRITER,
        REV_SUBJECT,
        REV_CONTENT,
        REV_WRITE_DATE,
        REV_FILE_NAME,
       	REV_ORI_NAME,
        REV_HIT
	)
VALUES 
    (   MU_REV_SEQ.NEXTVAL,
        '전시',
        'dongho',
        '"미샤 마이스키 리사이틀"을 보고..',
        '안산문화예술의전당 앞 큰 도로가를 지나다니면서 미샤 마이스키 첼로 공연을 홍보하는 현수막을 자주 보게 되었다. 인상이 강한 미남형의 연주자 모습을 보며 느꼈던 약간의 호기심은 토요문화학교 예술감상교육을 들으며 급호감으로 변했다. 40여 년 넘게 한 악기만을 고집하고 같이 호흡을 맞춘 음악가에 대한 완벽한 신뢰, 잦은 연주여행으로 인해 연주가가 지켜야할 에티켓이라 여겨지는 정장을 가볍고 톡톡 튀는 의상으로 갖춰 입는 등 클래식을 연주하는 이들에 대한 이미지가 어쩌면 관행처럼 이어져왔을 뿐 얼마든지 자신의 개성을 드러내며 연주할 수 있다는 게 가능하다는 걸 알게 되었다. 물론 편견에 사로잡힌 이들의 지적에 당당히 소신을 펼친다는 건 그만한 실력을 갖췄기에 가능한 일이란 것도 다시 한 번 깨닫게 된 계기가 되었다. 북유럽의 작은 나라 라트비아에서 태어나 이스라엘로 이주, 러시아 당국에 의한 수용소 수감, 정신병원 입원 등 드라마보다 더 드라마틱한 생을 살아 온 미샤 마이스키의 삶에 대해 알게 되니 연주 역시 그냥 지루한 클래식으로 들리지 않았다. 특별히 이번 연주회는 피아니스트인 딸과 함께 한 공연이었는데 가족에 대해 헌신적인 미샤 마이스키에 대한 이야기를 듣고 나서 그런지 딸과 연주하는 모습에서도 사랑과 깊은 신뢰가 느껴졌다. 정말 아름답고 안정적인 모습이랄까? 클래식에 대해 그다지 아는 게 없어도 마냥 좋아보였던 건 미샤 마이스키란 사람에 대해 알게 되어서 그랬던 건지, ‘세계적인 첼로 연주가’란 수식어가 붙어서 그랬던 건지 알 수 없다. 그러나 분명한 건 환호하는 관객들에게 진심을 다한 인사와 3번씩이나 앙콜 곡을 선물해 준 것 만으로도, 열기 넘치는 현장 안에 함께 있던 것만으로도 평생 기억에 남을 것 같다. 연주하다 활에서 끊어져 나온 활털을 주워 온 건 순전히 오늘의 연주회가 내게 큰 기쁨을 전해주었기 때문이다. 다시 미샤 마이스키의 연주를 직접 보게 될 날이 올지 알 수 없으나 그가 남기고 간 흔적만으로도 즐겁게 미샤 마이스키와 그의 딸 릴리를 기억하게 될 것이다. 긴 연주 시간에도 불구하고 앵콜곡을 무려 세 번이나 연주하기에 대단하다 했는데, 이 연주회를 보고나서 마이스키에 대한 관심이 커져 검색을 해보니 다른 지역에선 5번 앵콜로 수두룩.. ‘우린 왜 세 번만?’이란 생각보단 그저 대단하단 생각만 들 뿐이다. 딸 가온의 평 > 미샤 마이스키의 공연을 보았다. 처음부터 끝까지 지루했다. 스페인 민요 모음곡이란 것도 있었는데 역시 지루했다. 민요는 흥겨운 게 정석으로 알고 있는데 왜 얌전한지 모르겠다. 앙코르 곡 중 한 곡이 동물의 사육제의 하나라는데 잘 모르겠다. 그나마 내 마음에 드는 건 첼로와 피아노를 위한 소나타였는데 연주시간이 25분이나 되어 어느새 정신이 평행세계로 넘어가 버렸다. 미샤 마이스키나 첼로는 내게 감동을 주지 않았다. 가온 아빠의 평 > 딸 덕분에 첼로 연주를 듣게 되어 기쁘다. 딸과 함께 연주를 하는 미샤 마이스키가 참 부러웠다. 그가 살아온 삶을 모르고 그냥 연주만 들었더라면 그저 지루한 클래식이라고만 기억할 뻔 했는데, 남다른 삶의 이력을 듣고 나서 그런지 연주하는 곡에 더 집중하게 되어 좋았다. 토요문화학교를 통해 연주가와 음악에 대한 이해를 넓힐 수 있도록 준비해준 안산문화재단에 감사를 표한다.',
        '2019/04/26',
       	null,
        null,
        379
    )
;


----------------------------------------------------------------------------------------
-- 12)
INSERT INTO MU_REVIEW
    (   REV_IDX,
        REV_CATEGORY,
        REV_WRITER,
        REV_SUBJECT,
        REV_CONTENT,
        REV_WRITE_DATE,
        REV_FILE_NAME,
       	REV_ORI_NAME,
        REV_HIT
	)
VALUES 
    (   MU_REV_SEQ.NEXTVAL,
        '행사',
        'jinah',
        '샌드애니메이션과 함께 하는 낭독콘서트 소나기 관람',
        '22일 샌드애니메이션 낭독콘서트 소나기 공연 관람 했습니다 황순원 원작의 소년과 소녀 두 사람 이야기입니다 어렸을때 읽은것이라 가물가물 하지만 모레로 소나기 내용을 그림으로 한장면씩 그려 화면에 띄우니 서정적이면서 수체화 같은 아름다운 그림과 악기 연주에 마춰 (배해선 김기창)두 배우님이 낭독할때 너무 좋았습니다 특히 서당골이란 말을 들을때 제 고향에도 서당골이 있어 마음이 더 뭉클해지네요 소녀는 비록 불치병으로 죽었지만 소년의 마음에 영원히 잊지못할 첫사랑으로 남게 되는 이야기입니다 오랜만에 긴머리 소녀 노래 부르니 학창시절 생각이 나네요 공연전에 배해선 배우님 만나서 많은 이야기를 나누었고 배우님과 서울에서 공연때마다 자주 만나기 때문에 이번에도 무척 반겨 주십니다 특히 청순가련한 모습의 배우님 용팔이에서 황간호사 너무 낯설다고 했는데 저는 황간호사 아직도 배해선 배우님이라고 믿고싶지 않을정도로 혼란 스럽습니다 모든역을 소화시키는것이 배우지만... 안산예당에서 소나기로 통해 저 어렸을때 국민학교 6학년까지 검정고무신 신고 책보매고 학교 다닌 생각이 나고 국민학교 3학년까지 초가집에서 살고 5학년까지 호롱불 켜고 살았던 추억이 새록새록 떠오르네요 안산예당 기획부에 감사 드립니다 어렸을때 추억을 되세기게끔 해줘서요...',
        '2019/05/12',
       	null,
        null,
        409
    )
;


----------------------------------------------------------------------------------------
-- 13)
INSERT INTO MU_REVIEW
    (   REV_IDX,
        REV_CATEGORY,
        REV_WRITER,
        REV_SUBJECT,
        REV_CONTENT,
        REV_WRITE_DATE,
        REV_FILE_NAME,
       	REV_ORI_NAME,
        REV_HIT
	)
VALUES 
    (   MU_REV_SEQ.NEXTVAL,
        '공연',
        'mino',
        '아침음악살롱 담당자님께 고함.',
        '제가 아침음악살롱을 처음 관람한 건 작년 3월 27일 클래식 기타리스트 드니 성호의 무대였습니다. 아무 기대 없이 오전에 음악회를 간다는 것만으로도 너무 좋았는데 그 분의 연주는 정말 악기와 사람이 한 몸이 된 듯한 환상적인 연주였습니다. 그때부터 아침음악살롱은 정말 저에게 정말 힐링이 되고 기대가 되는 시간들이었습니다. 작년 연주중 테너 박승희씨의 연주를 제외한 나머지 4번의 연주회는 정말이지 개성이 뚜렷하고 준비를 많이 했구나 싶은 완성도 있는 무대였습니다. 특히 3월달의 드니성호 연주와 11월의 최선배 재즈앙상블팀의 무대는 최고이지 않았나 싶네요. 그래서 올해도 기대하는 마음으로 아침음악살롱을 4월부터 어제까지 관람을 했습니다. 4월의 비올리스트 이신규씨의 무대도 나름 좋았습니다. 장소가 해돋이극장의 무대 바닥이라는게 좀 많이 불편했지만 어쨌든 연주회의 수준은 좋았습니다. 하지만 어제 최문석씨의 연주는 영 아니였습니다. 중간에 나오고 싶을 정도로 준비가 안된 연주회가 아니지 않았나 싶었습니다. 연주자 본인도 아마 느꼈을텐데..이 무대를 너무 우습게 보고 준비를 덜 한것인지 아니면 원래 실력이 그 정도인건지..티켓값이 비싼 연주회는 아니지만 그 시간에 제가 제 돈을 내고 거기 앉아 있다는 게 참 고역이었습니다. 아침음악살롱 담당자님이 이 게시판을 보시는지 잘 모르겠습니다. 만약 이 글을 보신다면 앞으로 보다 완성도 있는 연주를 하는 연주자의 무대를 볼 수 있게 해주시면 감사하겠습니다.',
        '2019/10/23',
       	null,
        null,
        720
    )
;


----------------------------------------------------------------------------------------
-- 14)
INSERT INTO MU_REVIEW
    (   REV_IDX,
        REV_CATEGORY,
        REV_WRITER,
        REV_SUBJECT,
        REV_CONTENT,
        REV_WRITE_DATE,
        REV_FILE_NAME,
       	REV_ORI_NAME,
        REV_HIT
	)
VALUES 
    (   MU_REV_SEQ.NEXTVAL,
        '행사',
        'yuna',
        '특강후기 <신화로 읽는 연극, 연극으로 읽는 신화>',
        '안녕하세요~ 신길중학교 2학년 이유빈입니다. 평소 신성하고 신비한 이야기와 관심이 많은 저는 많은 신화 중에 그리스 로마 신화를 가장 좋아합니다. 이번 특강으로 그리스 로마 신화에서 알고 있는 여러 신들에 대해 더욱 자세히 알아볼 수 있었고, 쉽게 접하지 못했던 신이나 여러 인물들에 대해 새로운 정보를 얻을 수 있어 좋았습니다. 하지만 특강을 진행하시는 교수님, 특강을 들으러 오신 대부분의 사람들은 연세가 많은 분들이어서 저희처럼 학생들과 어린 아이들에게는 그들의 어휘에 대한 이해가 힘들고 어려워 아쉬움이 남았습니다. 그래도 교수님의 강의덕분에 그리스 로마 신화를 소재로 한 연극 <변신이야기>를 흥미롭게 관람할 수 있을 것 같습니다. 감사합니다.',
        '2019/10/28',
       	null,
        null,
        200
    )
;


----------------------------------------------------------------------------------------
-- 15)
INSERT INTO MU_REVIEW
    (   REV_IDX,
        REV_CATEGORY,
        REV_WRITER,
        REV_SUBJECT,
        REV_CONTENT,
        REV_WRITE_DATE,
        REV_FILE_NAME,
       	REV_ORI_NAME,
        REV_HIT
	)
VALUES 
    (   MU_REV_SEQ.NEXTVAL,
        '공연',
        'sanghee',
        '꿈다락 문화학교<유도소년> 후기',
        '늦은후기를 적어봅니다. 단순히 운동을 소재로 하는 연극이겠거니..하며 뻔한 내용이겠구나 라는 생각으로 공연장을 갔었던것 같습니다. 하지만 시작하기전부터 나오는 음악은 기대와 기분을 묘하게 바꾸어주던군요. 무대와 소재 자체가 생소하였던것두 있지만, 내용과 배우들의 연기가 감동이었습니다. 전달하고자 하는게 무엇인지와 관객들에게 즐거움을 어떻게 줘야하는지를 모두 배려한 그러한 연극이었습니다. 조금 무거워지려고 할때마다 봉구라는 소재와 코믹한 소재를 넣어 분위기를 전환하는 능력또한 감탄을 하게 만들더군요. 딸아이 둘과 함께 온것이 정말로 감사하고 또 감사했습니다. 많은 청소년들이 함께 보면 정말 좋겠구나 라는 생각이 계속들었던 연극이었구요. 감동과 기쁨 즐거움에 연기력까지 완벽한 연극이었습니다. 멋진 연극만들어 주셔서 감사하구요. 꿈다락을 통해 저희 아이들에게 배움과 감동의 기회를 주셔서 또한번 더 감사합니다. 좀 어려울것 같은 변신이야기 또한 기대가 됩니다.~~~^^',
        '2019/10/28',
       	null,
        null,
        720
    )
;


----------------------------------------------------------------------------------------
-- 16)
INSERT INTO MU_REVIEW
    (   REV_IDX,
        REV_CATEGORY,
        REV_WRITER,
        REV_SUBJECT,
        REV_CONTENT,
        REV_WRITE_DATE,
        REV_FILE_NAME,
       	REV_ORI_NAME,
        REV_HIT
	)
VALUES 
    (   MU_REV_SEQ.NEXTVAL,
        '공연',
        'hayan',
        '조금 늦은 오더메이드 레퍼토리 잡 후기',
        '공연에 대한 감상을 제 공간에 적어두긴 했는데 이렇게 후기로 옮기는 게 조금 늦어졌네요! '오더메이드 레퍼토리 잡'이란 공연은 공연명만큼이나 생소하고 얼떨떨한 느낌으로 만났던 것 같아요. 전통음악 공연이고 '잡가'가 주를 이루기 때문에 공연명이 '잡ZAP'인가보다 하는 정도의 정보만 가지고 공연장으로 향했어요, 공연장에 들어서는 순간부터 정말 묘한 분위기에 사로잡히는 느낌이랄까요. 세트인지 의상인지 모를 공연대기장면부터 묘한 긴장감을 주는 것이 신선한 연출이었어요! 소리꾼 이희문님께서 노래를 시작하시고부터는 '아 그냥 평범한 전통음악 공연들과 크게 다르지는 않겠구나' 생각했는데 정말 반전에 반전을 주는 신기한 장면들이 펼쳐지더군요. 세트와 의상이 변하고 다른 배우분들이 등장하면서부터는 정말 한 순간도 놓치지 않고 보려고 애쓰며 집중했던 것 같습니다. 귀로는 전통음악을 듣고 있는데 눈으로는 현대무용 혹은 연극을 보는 것 같은 느낌이랄까요. 어울리지 않을 것 같은 의상과 음악과 움직임이 묘하게 어우러지는 신기한 무대였던 것 같아요. 솔직히 초반에는 곡의 가사나 스토리를 잘 모르는 상태에서 좀 지루해질 수도 있겠다 싶었는데 익히 알고 있는 춘향가 같은 곡들이 시작되면서는 더 집중도가 올라가고 즐길 수 있었어요! 공연에 대한 총체적인 감상은 이 공연에서도 그랬지만 전통음악 공연은 대부분 관객의 연령대가 높은 편인데 이 공연이라면 충분히 더 젊은층에 어필할 수 있고 전통음악을 새롭게 접하게 해줄 수 있는 도전이 되지 않을까 하는 면에서 좋았던 것 같아요. 조금 아쉬웠던 점은 부르시는 곡들의 대강의 이야기를 사전에 알 수 있는 자료나 설명이 더해졌다면 더 집중도 있고 즐길 수 있는 공연이 되지 않았을까 싶어요! 정말 새롭고 색다른 느낌의 공연을 만나 즐거웠습니다! 더 발전된 모습으로 다양한 전통음악을 접할 기회가 늘어났으면 좋겠네요:)',
        '2020/01/05',
       	null,
        null,
        500
    )
;


----------------------------------------------------------------------------------------
-- 17)
INSERT INTO MU_REVIEW
    (   REV_IDX,
        REV_CATEGORY,
        REV_WRITER,
        REV_SUBJECT,
        REV_CONTENT,
        REV_WRITE_DATE,
        REV_FILE_NAME,
       	REV_ORI_NAME,
        REV_HIT
	)
VALUES 
    (   MU_REV_SEQ.NEXTVAL,
        '공연',
        'daseul',
        '<오더메이드 레퍼토리 잡> 잡가, 정녕 잡스러운 소리인가',
        '*다분히 제 생각 위주로 적어봅니다. '잡가'란 있는 그대로 뜻을 풀이하면 '잡스러운 소리'라 한다. 소리꾼에겐 익숙한 단어일 수 있지만 민요를 자주 접하지 않는 이에게는 생소한 단어이다. 글쓴이 또한 처음 접하는 소리로 꽤나 당황스러웠다. 이왕이면 제대로 느끼고 바르게 해석하고 싶은 욕심이 있어 가사 하나하나의 의미를 머리에 담으려 하였다. 하지만 마음만큼 따라가지 못하니 아쉽다 못해 불안감마저 들었다. 많은 관객들이 이와 같은 감정을 느끼지 않았나 싶다. 물론 공연의 초반! 팔색조 이희문씨의 매력을 보기 전까지다. (정말이지 이 불안한 마음을 소리꾼이 잠재워준다.) 공연은 전반적으로 우리(전통)의 소리는 두되 현대에 맞추어 재해석이 되었다. 처음은 진지하나 진기한 광경이 하나둘씩 펼쳐지다 극의 끝이 다가올수록 그 흥이 절정에 도달하게 만든다. 어느새 나도 모르게 소리꾼의 리듬에 박수를 치고 있음을 느꼈다. 우리(전통) 소리는 예전 시장 중심에서 소리꾼의 소리를 안주삼아 한잔씩 주고받기도 하고 관객이 추임새를 넣으며 흥겨운 분위기가 어우러졌다고 한다. 현대에 와서는 시장이 아닌 공연장 무대에서 많이 이루어진다. 공연장에서의 우리는 공간의 특성상 바른 자세로 앉아있길 요구받지만 이 공연만큼은 여긴 공연장의 무대가 아닌 시장의 중심이 되어버린다. 속안의 흥을 감출필요도 남의 시선을 의식할 필요도 없다. 무리하게 가사에 집중하느라 자신의 흥을 외면하지 말고 있는 그대로 느끼면 공연을 더 즐길 수 있을 것 같다. *후기가 너무 늦어서 죄송하다는 말씀을 드립니다.',
        '2020/01/07',
       	null,
        null,
        520
    )
;




----------------------------------------------------------------------------------------
-- 18)
INSERT INTO MU_REVIEW
    (   REV_IDX,
        REV_CATEGORY,
        REV_WRITER,
        REV_SUBJECT,
        REV_CONTENT,
        REV_WRITE_DATE,
        REV_FILE_NAME,
       	REV_ORI_NAME,
        REV_HIT
	)
VALUES 
    (   MU_REV_SEQ.NEXTVAL,
        '전시',
        'dam0',
        '8.30/ Play the gesture- 무브스 콜렉터',
        '후기가 늦었네요^^ 저는 8월 30일 공연을 관람하였습니다. 사실 무용은 많이 접해보지 않아서 어떻게 다가가야할지 걱정이 앞섰습니다. 생각보다 무거운 분위기라 마냥 웃고 즐기기 보다는 공연의 의미가 무엇일지 찾는다는 마음으로 보았습니다. 연출가가 관객에게 전달하려는 의미를 정확히 파악하지는 못했지만 마음의 꿈을 표현하려는게 아닌가 싶네요. 제일 기억나는 부분은 1부 공연이에요 이부분에 대한 저의 생각입니다.^^ 그림자를 두고 인간의 고뇌를 표현하는 느낌을 받았습니다. 그림자는 특성상 '나'라는 존재이기도 하면서 다른 시각으로 보면 '나'가 아닌 존재라고 생각합니다. '그림자'를 처음 접했을때 누구든 신기해하죠. 그런 모습을 마치 현실 속 자신의 모습보다는 그림자에 비친 자신의 모습을 보며 놀라기도 하고 신기해하기도 하는 모습을 그려냈다고 느껴지네요. 그림자를 통해 그들은 점점 여러 모션을 행하며 결국 음악을 통해 감정 표출을 하죠. 하지만 완전한 자신의 노출이하기엔 하나의 허점이 남아있습니다. 바로 선글라스죠. 격정적인 춤을 통해 완전한 '나'라는 존재를 표출하는 것 같지만 선글라스를 통해 아직 완전히 현실에 다가서지 못했다고 생각합니다. 눈이 어둠에 막혀 제대로 현실을 마주하지 못할게 아닐까 싶습니다. 그후 그들은 가벼운 옷차림으로 다시 몸을 움직입니다. 음악도 전과 다르죠. 사뭇 진지해지는 그들의 몸짓은 마치 이제 막 날개짓을 시작하는 새를 나타내는 듯 하였습니다. 힘든 현실에 굴복하기 보다는 자신이 목표하는 바를 이루어 새처럼 도약하겠다는 의지를 보이는 것 같았습니다. 제가 느끼는 바를 다른 분들이 공감하실지는 모르겠지만 사람이 자신의 관점, 생각으로 세상을 본다 하잖아요^^ 사실 전 현재 취업을 고민하는 학생이에요. 현실과 이상에 대한 고민때문인지 공연마저 그렇게 느껴지네요^^ 다른분들은 어떻게 바라보셨는지 더 많은 의견을 나누고 싶네요~^^',
        '2020/01/25',
       	null,
        null,
        400
    )
;



----------------------------------------------------------------------------------------
-- 19)
INSERT INTO MU_REVIEW
    (   REV_IDX,
        REV_CATEGORY,
        REV_WRITER,
        REV_SUBJECT,
        REV_CONTENT,
        REV_WRITE_DATE,
        REV_FILE_NAME,
       	REV_ORI_NAME,
        REV_HIT
	)
VALUES 
    (   MU_REV_SEQ.NEXTVAL,
        '공연',
        'hana',
        '제발 공연 관람 예절을 지켜주세요!!!!',
        '안녕하세요. 먼저 좋은 공연으로 문화의 향유를 느낄수 있게 해주시는 안산예당측에 감사한 마음 전합니다. 제가 사는곳이 안산은 아니지만, 서초 예술의 전당보다 수준높은 공연장이라고 느끼기 때문에 먼걸음이지만, 늘 찾아가서 보고 배우고 느끼는 오감의 즐거움을 가족들과 함께 하고 있지요. 그러나 너무 큰 아쉬움이 있어서 말씀드립니다. 공연이 시작되었는데도 불구하고, 여기저기 터지는 핸드폰 벨소리는 매 공연마다 들려 옵니다. 핸드폰을 꺼놓지 않는 분들을 살펴보면 대부분 노년층이 많으십니다. 직원분들께서 기회닿는 대로 노년층분들께 핸드폰 꺼놓으시라는 메세지를 자주 주셨으면 합니다. 그리고 공연중에 정말 많은 분들이 핸드폰을 진동으로 해놓으시고, 몰래 영상을 찍거나, 목소리를 녹음하거나, 검색을 하십니다. 정말 속상합니다. 어제도(together 공연) 제 앞줄에 앉았던 두명의 여성은 직원분께 핸드폰 끄라는 말 씀을 들었지만, 이 여성 두분은 5분도 되지 않아 핸드폰을 켜놓고 다시 영상을 녹화하더군요. 조금후에는 제 옆에 앉은 아주머니가 핸드폰으로 공연하는 분들의 목소리를 녹음을 하시길래 제가 주의를 드렸는데도 수시로 녹음 하셨어요. 가운데 앉으셨기 때문에 직원분이 주의 주기에 너무 먼 장소였답니다. 결국 저의 귀한 공연 관람 시간은 손해를 봤습니다. 훌륭한 공연에 훌륭한 관객이 필요합니다. 그러나, 많은 분들은 지켜야 할 예절을 무시하십니다. 주최측에서 더 세심한 당부가 필요합니다. 인력이 부족하시겠지만, 이 부분은 안산예당의 발전을 위해서 필요한 부분입니다. 공연성격에 따라 관객들도 달라져야 하는데, 세월호 추모공연인데도 전혀 관심없는 사람들이 와서, 핸드폰이나 만져대는것을 보면 속이 상합니다. 좋은 공연을 위해 더 많이 고민해주십시오. 시작전 안내방송을 필요하면 세번 네번 수시로 보내주시고, 직원분들 계속 주변을 살피셔서 핸드폰 체크해주시기 바랍니다. 정명화 선생님 독주 하실때, 2층에서 퍼져나온 트로트 핸드폰 벨소리는 정말 부끄러운 문화입니다. 모두 다 함께 공연예절을 지켜주세요.',
        '2020/03/05',
       	null,
        null,
        730
    )
;




----------------------------------------------------------------------------------------
-- 20)
INSERT INTO MU_REVIEW
    (   REV_IDX,
        REV_CATEGORY,
        REV_WRITER,
        REV_SUBJECT,
        REV_CONTENT,
        REV_WRITE_DATE,
        REV_FILE_NAME,
       	REV_ORI_NAME,
        REV_HIT
	)
VALUES 
    (   MU_REV_SEQ.NEXTVAL,
        '전시',
        'jaedo',
        '정경화의 그래도 희망..',
		'세월호 사건으로 너무도 안타까운 생명들이 희생되는 가운데 어른으로서 많이 부끄러웠습니다. 무언가 도울일이 없을까 찾고 하는과정에 마음속에 슬픔이 쌓였나봅니다. 그러다 우연히 정경화님의 그래도 희망 자선공연을 관람하게 되어 마음의 크나큰 힐링을 받았어요. 이제는 할머니가 된 정경화님의 열정적인 공연모습 뿐 아니라 그녀의 진솔한 이야기에 많은 치유를 받았습니다. 정경화님께서 당신은 정말이지 한국인이라는 말과 함께 힘들어하는 사람들의 마음을 보듬어주려고 하는 마음이 그대로 저의 마음에 닿았던것 같습니다. 게시판을 통해서나마 정경화선생님과 함께해주신 공연자 선생님들께 다시 감사의 마음을 전합니다~ 사랑합니다^^',
        '2020/01/05',
       	null,
        null,
        580
    )
;



----------------------------------------------------------------------------------------
-- 21)
INSERT INTO MU_REVIEW
    (   REV_IDX,
        REV_CATEGORY,
        REV_WRITER,
        REV_SUBJECT,
        REV_CONTENT,
        REV_WRITE_DATE,
        REV_FILE_NAME,
       	REV_ORI_NAME,
        REV_HIT
	)
VALUES 
    (   MU_REV_SEQ.NEXTVAL,
        '전시',
        'dasom',
        '아름다운 모습들',
        '안산의 봄은 없었습니다. 그러나 그대들이 들려주는 환상의 하모니는 우리들 마음을 울렸습니다. 들으면서 훔쳤던 그눈물은 평생 잊지못하는 멋진 경험이고 추억입니다. 음악으로 마음이 뜨꺼워지고 서로가 함께했기에 슬픔은 잠시물렸습니다. . 어찌 잊겠습니까 마는 그대들의 위로의 하모니는 저 하늘에 있는 천사들도 느꼈지 않았을 까요? 안산에서 멋진 공연을 해주신 바이올리니스트 정경화 언니, 피아니스트 케빈 케너,양성원 첼리스트, 사랑합니다.',
        '2020/06/05',
       	null,
        null,
        209
    )
;




----------------------------------------------------------------------------------------
-- 22)
INSERT INTO MU_REVIEW
    (   REV_IDX,
        REV_CATEGORY,
        REV_WRITER,
        REV_SUBJECT,
        REV_CONTENT,
        REV_WRITE_DATE,
        REV_FILE_NAME,
       	REV_ORI_NAME,
        REV_HIT
	)
VALUES 
    (   MU_REV_SEQ.NEXTVAL,
        '행사',
        'sanghee',
        '잔잔하고 아름다운 안산의 이야기_염전이야기',
        '무대에서 비릿한 소금 냄새가 나는 것 같았습니다. 공연 후에는 소금향기 때문에 목이 마른 듯한 착각도 느꼈습니다. 소금(무대에 깔린게 정말 소금인가요? ^^)을 밟고 이리저리 움직이는 배우들의 발자국 소리는 또 하나의 음악처럼 다가왔습니다. 안산 신길동(?)에서 염전을 하고 있는 풍식씨네 가족 이야기였는데, 그리 멀지 않은 과거의 안산의 평범한 풍경이었겠지요? 그러나 진솔한 삶이 주는 감동은 지역과 시간을 초월하는것 같습니다. 오롯이 한 길을 걸어온 무뚝뚝한 풍식씨, 그 곁을 묵묵히... (그녀도 나이 들면서 말이 많아진거겠지요? ) 지켜온 이분 자신의 이혼 후 충격으로 말이 없어진 딸과 부모님을 모시고 사는 딸, 그리고 서울에서 열심히..살아가는 아들 극의 화자 태지의 이야기는 다만 안산의 이야기가 아닌 우리네 살아가는 이야기를 담담히 그려내었습니다. 안산지역에서 오디션으로 뽑혔다는 어린 태지 역의 소녀의 연기가 정말 기가 막혔네요. 어찌 그런 밀도를 선사하는지... 신문성 배우님 연기도 너무 좋았구요 오랜만에 잔잔하고 깊이 있는 무대 즐겼습니다. 깔끔한 연출과 무대미술도 빛났구요. 제 관람 후기가 안산시민들 한분이라도 극장에 모실 수 있다면 기쁘겠습니다. 안산문화예술의전당 제작연극 염전이야기 굿입니다.',
        '2020/04/05',
       	null,
        null,
        500
    )
;




----------------------------------------------------------------------------------------
-- 17)
INSERT INTO MU_REVIEW
    (   REV_IDX,
        REV_CATEGORY,
        REV_WRITER,
        REV_SUBJECT,
        REV_CONTENT,
        REV_WRITE_DATE,
        REV_FILE_NAME,
       	REV_ORI_NAME,
        REV_HIT
	)
VALUES 
    (   MU_REV_SEQ.NEXTVAL,
        '공연',
        'hayan',
        '조금',
        '',
        '2020/01/05',
       	null,
        null,
        500
    )
;



----------------------------------------------------------------------------------------
-- 17)
INSERT INTO MU_REVIEW
    (   REV_IDX,
        REV_CATEGORY,
        REV_WRITER,
        REV_SUBJECT,
        REV_CONTENT,
        REV_WRITE_DATE,
        REV_FILE_NAME,
       	REV_ORI_NAME,
        REV_HIT
	)
VALUES 
    (   MU_REV_SEQ.NEXTVAL,
        '공연',
        'hayan',
        '조금',
        '',
        '2020/01/05',
       	null,
        null,
        500
    )
;
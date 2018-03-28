//
//  firstViewController.swift
//  Portuguese
//
//  Created by Krishna Prasad Khanal on 24/03/2018.
//  Copyright © 2018 Krishna Prasad Khanal. All rights reserved.
//

import UIKit
import GoogleMobileAds

class firstViewController: UIViewController, UITextFieldDelegate {
    var enWord = ["accept (स्वीकार)","care (हेरविचार)","could (सकेजति)","enjoy (आनन्द)","happen (हुन)","lead (नेतृत्व)","open (खुला)","reduce (कम)","settle (बसोबास)","teach (सिकाउन)","account (खाता)","carry (बोक्न)","count (गणना)","examine (जाँच्न)","hate (घृणा)","learn (सिक्न)","order (अर्डर)","refer (उल्लेख)","shake (मिलाउ)","tell (बताउन)","achieve (प्राप्त)","catch (क्याच)","cover (आवरण)","exist (अवस्थित)","have (छ)","leave (छोड)","ought (पर्छ)","reflect (प्रतिबिम्बित)","shall (हुनेछ)","tend (गर्छन)","act (कार्य)","cause (कारण)","create (सिर्जना)","expect (आशा)","head (टाउको)","lend (उधारो)","own (आफ्नै)","refuse (इन्कार)","share (शेयर)","test (परीक्षण)","add (थप)","change (परिवर्तन)","cross (पार)","experience (अनुभव)","hear (सुन्छ)","let (गरौं)","pass (पारित)","thank (धन्यवाद)","admit (स्वीकार)","charge (चार्ज)","cry (कराउँदै)","explain (व्याख्या)","help (मदत)","lie (झूट)","pay (भुक्तानी)","relate (सम्बन्धित)","should (गर्नुपर्छ)","think (लाग्छ)","affect (असर)","check (जाँच)","cut (कट)","express (व्यक्त)","hide (लुकाउन)","like (जस्तै)","perform (प्रदर्शन)","release (जारी)","shout (कराउनु)","throw (फाल्नु)","choose (छनौट)","damage (क्षति)","extend (विस्तार)","hit (हिट)","limit (सीमा)","pick (छनोट)","remain (बाँकी)","show (देखाउनु)","touch (स्पर्श)","agree (सहमत)","claim (दावी)","dance (नृत्य)","face (अनुहार)","hold (होल्ड)","link (लिङ्क)","place (ठाउँ)","remember (सम्झनु)","shut (बन्द)","train (रेल)","aim (उद्देश्य)","clean (सफा)","deal (सम्झौता)","fail (असफल)","hope (आशा)","listen (सुन्न)","plan (योजना)","remove (हटाउन)","sing (गाउन)","travel (यात्रा)","allow (अनुमति)","clear (स्पष्ट)","decide (निर्णय)","fall (गिर)","hurt (चोट)","live (बाँच्न)","play (खेल्नु)","repeat (दोहोरिने)","sit (बस्न)","treat (व्यवहार)","answer (जवाफ)","climb (आरोहण)","deliver (उद्धार)","fasten (कस्नु)","identify (पहिचान)","look (हेर्न)","point (बिन्दु)","replace (प्रतिस्थापन)","sleep (निद्रामा)","try (प्रयास)","appear (देखा)","close (नजिक)","demand (माग)","feed (फिड)","imagine (कल्पना)","lose (गुमाउनु)","prefer (रुचि)","reply (जवाफ)","smile (मुस्कान)","turn (पालो)","apply (निवेदन गर्नु)","collect (सङ्कलन)","deny (अस्वीकार)","feel (महसुस)","improve (सुधार)","love (प्रेम)","prepare (तयार)","report (रिपोर्ट)","sort (क्रमबद्ध)","understand (बुझ्न)","argue (तर्क)","come (आउनुहोस्)","depend (निर्भर)","fight (लडाई)","include (समावेश)","make (बनाउन)","present (वर्तमान)","represent (प्रतिनिधित्व)","sound (ध्वनि)","use (प्रयोग)","arrange (व्यवस्था)","commit (प्रतिबद्ध)","describe (वर्णन)","fill (भर्न)","increase (बढ्नु)","manage (व्यवस्थापन)","press (प्रेस)","require (आवश्यक)","speak (बोल्न)","used to (प्रयोग)","arrive (आइपुग्छन्)","compare (तुलना)","find (फेला)","indicate (संकेत)","mark (मार्क)","prevent (रोक्न)","rest (बाँकी)","stand (खडा)","visit (यात्रा)","ask (सोध्नु)","complain (गुनासो)","destroy (नष्ट)","finish (समाप्त)","influence (प्रभाव)","produce (उत्पादन गर्न)","result (परिणाम)","start (सुरु)","vote (मत)","attack (आक्रमण)","complete (पूरा)","develop (विकास)","fit (फिट)","inform (सूचित)","may (सक्छ)","promise (प्रतिज्ञा)","return (फर्किनु)","state (राज्य)","wait (प्रतीक्षा)","avoid (जोगिन)","concern (चासो)","die (मर्न)","fly (उड)","intend (अभिप्राय)","mean (अर्थ)","protect (रक्षा)","reveal (प्रकट)","stay (रहन)","walk (हिंड्न)","base (आधार)","confirm (पुष्टि)","disappear (गायब)","fold (गुना)","introduce (परिचय)","measure (मापन)","prove (प्रमाणित)","ring (घन्टी)","stick (स्टिक)","want (चाहनुहुन्छ)","be (हुन)","connect (जडान)","discover (पत्ता)","follow (पछ्याउन)","invite (आमन्त्रण)","meet (मिलन)","provide (प्रदान)","rise (उठ्नेछ)","stop (रोक)","warn (चेतावनी)","beat (पिटे)","consider (विचार)","discuss (छलफल)","force (शक्ति)","involve (समावेश)","mention (उल्लेख)","publish (प्रकाशित)","roll (रोल)","study (अध्ययन)","wash (धो)","become (बन्न)","consist (समावेश)","divide (भाग)","forget (भूल)","join (सामेल)","might (शायद)","pull (पुल)","run (रन)","succeed (सफल)","watch (हेर्न)","begin (सुरु)","contact (सम्पर्क)","do (के)","forgive (क्षमा)","jump (हाम फाल्न)","mind (मन)","push (पुस)","save (सुरक्षित)","suffer (ग्रस्त)","wear (लगाउने)","believe (विश्वास)","contain (समावेश)","draw (आकर्षित)","form (फारम)","keep (राख्न)","miss (मिस)","put (राख्नु)","say (भन्न)","suggest (सुझाव)","will (हुनेछ)","belong (सम्बन्धित)","continue (जारी)","dress (पोशाक)","found (फेला)","kick (किक)","move (चल्नु)","raise (उठाउनु)","see (हेर्न)","win (जीत)","break (ब्रेक)","contribute (योगदान)","drink (पेय)","gain (पाउनु)","kill (मार्न)","must (पर्छ)","reach (पुग्नु)","seem (जस्तो)","supply (आपूर्ति)","wish (इच्छा)","build (निर्माण)","control (नियन्त्रण)","drive (ड्राइभ)","get (प्राप्त)","knock (ठोक्नुहोस्)","need (आवश्यक)","read (पढ्न)","sell (बेच्न)","support (समर्थन)","wonder (आश्चर्य)","burn (बाल्न)","cook (कुक)","drop (ड्रप)","give (दिनु)","know (चिन्छु)","notice (सूचना)","realize (महसुस)","send (पठाउन)","suppose (ठान्नु)","work (काम)","buy (किन्न)","copy (कापी)","eat (खान)","go (जाने)","last (पछिल्लो)","obtain (प्राप्त)","receive (प्राप्त)","separate (अलग)","survive (बाँच्न)","worry (चिन्ता)","call (कल)","correct (सही)","enable (सक्षम)","grow (बढ्न)","laugh (हाँस)","occur (उत्पन्न)","recognize (पहिचान)","serve (सेवा)","take (लिन)","can (गर्न सक्छन्)","cost (लागत)","encourage (प्रोत्साहन)","offer (प्रस्ताव)","record (रेकर्ड)","set (सेट)","talk (कुरा)","write (लेख्न)","about (बारेमा)","after (पछि)","again (फेरि)","air (हावा)","all (सबै)","along (साथ)","also (पनि)","an (एक)","and (र)","another (अर्को)","any (कुनै पनि)","are (हो)","as (रूपमा)","at (मा)","away (टाढा)","back (फिर्ता)","be (हुन)","because (किनभने)","before (पहिले)","below (तल)","between (बीच)","both (दुवै)","but (तर)","by (द्वारा)","can (गर्न सक्छन्)","come (आउनुहोस्)","day (दिन)","different (विभिन्न)","down (तल)","each (प्रत्येक)","end (अन्त)","every (हरेक)","find (फेला)","first (पहिलो)","from (बाट)","give (दिनु)","go (जाने)","good (राम्रो)","great (ठूलो)","house (घर)","how (कसरी)","little (सानो)","long (लामो)","look (हेर्न)","made (गरे)","make (बनाउन)","man (मानिस)","many (धेरै)","may (सक्छ)","me (मलाई)","name (नाम)","never (कहिल्यै)","new (नयाँ)","next (अर्को)","part (भाग)","people (मान्छे)","place (ठाउँ)","put (राख्नु)","read (पढ्न)","right (दायाँ)","same (एउटै)","say (भन्न)","see (हेर्न)","she (त्यो)","should (गर्नुपर्छ)","show (देखाउनु)","small (सानो)","some (केही)","something (केही)","sound (ध्वनि)","still (अझै पनि)","tell (बताउन)","thing (कुरा)","think (लाग्छ)","this (यो)","want (चाहनुहुन्छ)","water (पानी)","we (हामी)","write (लेख्न)","year (वर्ष)","you (तपाईं)","your (आफ्नो)","able (सक्षम)","above (माथि)","across (मार्फत)","add (थप)","against (विरुद्ध)","almost (लगभग)","among (बीचमा)","animal (पशु)","answer (जवाफ)","become (बन्न)","behind (पछि)","better (राम्रो)","black (कालो)","best (सबै भन्दा राम्रो)","body (जीउ)","book (पुस्तक)","boy (केटा)","call (कल)","cannot (सकदिन)","car (कार)","change (परिवर्तन)","children (बच्चाहरु)","city (शहर)","close (नजिक)","cold (चिसो)","country (देश)","course (पाठ्यक्रम)","cut (कट)","dog (कुकुर)","done (सम्पन्न)","door (ढोका)","draw (आकर्षित)","during (समयमा)","early (प्रारम्भिक)","earth (पृथ्वी)","eat (खान)","enough (पर्याप्त)","example (उदाहरणका)","eye (आँखा)","face (अनुहार)","family (परिवार)","far (टाढा)","father (बुबा)","feel (महसुस)","feet (खुट्टा)","fire (आगो)","fish (माछा)","food (खाना)","front (अगाडि)","green (हरियो)","group (समूह)","grow (बढ्न)","hand (हात)","hard (कडा)","heard (सुने)","himself (आफूलाई)","idea (विचार)","important (महत्त्वपूर्ण)","inside (भित्र)","keep (राख्न)","kind (दयालु)","known (ज्ञात)","land (भूमि)","later (पछि)","learn (सिक्न)","let (गरौं)","letter (पत्र)","life (जीवन)","light (प्रकाश)","live (बाँच्न)","making (बनाउने)","night (रात)","nothing (केही)","open (खुला)","order (अर्डर)","page (पृष्ठ)","paper (कागज)","parts (भागहरु)","perhaps (सायद)","picture (तस्वीर)","play (खेल्नु)","ready (तयार)","red (रातो)","remember (सम्झनु)","rest (बाँकी)","room (कोठा)","run (रन)","school (स्कूल)","sea (समुद्र)","second (दोस्रो)","seen (देखेको)","several (धेरै)","short (छोटो)","shown (देखाइएको)","soon (चाँडै)","space (ठाउँ)","story (कथा)","sun (सूर्य)","sure (निश्चित)","table (तालिका)","today (आज)","told (भन्नुभयो)","took (लिनुभयो)","top (शीर्ष)","tree (रूख)","try (प्रयास)","turn (पालो)","United (संयुक्त)","until (सम्म)","using (प्रयोग)","usually (सामान्यतया)","white (सेतो)","whole (सारा)","wind (हावा)","without (बिना)","yet (अझै)","young (जवान)","alone (एक्लै)","already (पहिले नै)","am (छु)","anything (केहि)","area (क्षेत्र)","ball (बल)","beautiful (सुन्दर)","beginning (सुरु)","blue (नीलो)","boat (डुङ्गा)","bottom (तल)","box (बक्स)","bring (ल्याउन)","build (निर्माण)","care (हेरविचार)","carefully (ध्यान दिएर)","carried (लगे)","center (केन्द्र)","check (जाँच)","coming (आउँदै)","common (साधारण)","complete (पूरा)","dark (गाढा)","deep (गहिरो)","distance (दूरी)","doing (गरिरहेको)","dry (सुक्खा)","easy (सजिलो)","either (या त)","everyone (सबैलाई)","everything (सबै)","fall (गिर)","fast (छिटो)","field (क्षेत्र)","finally (अन्तमा)","floor (तल्ला)","follow (पछ्याउन)","foot (खुट्टा)","friend (मित्र)","game (खेल)","getting (प्राप्त)","girl (केटी)","glass (ग्लास)","goes (जान्छ)","gold (सुन)","happened (भयो)","having (भइरहेको)","heart (मुटु)","heavy (भारी)","held (आयोजित)","horse (घोडा)","hot (तातो)","hour (घण्टा)","hundred (सय)","ice (बरफ)","instead (सट्टा)","itself (आफै)","job (काम)","kept (राखिएको)","language (भाषा)","leave (छोड)","let's (गरेको गरौं)","list (सूची)","longer (अब)","low (कम)","main (मुख्य)","map (नक्सा)","mountain (पर्वत)","music (संगीत)","needed (आवश्यक)","past (विगतका)","plant (बोट)","poor (गरिब)","possible (सम्भव)","power (शक्ति)","probably (शायद)","problem (समस्या)","question (प्रश्न)","quickly (चाँडै)","rain (वर्षा)","river (नदी)","road (सडक)","scientist (वैज्ञानिक)","snow (हिउँ)","someone (कसैले)","special (विशेष)","stop (रोक)","strong (बलियो)","suddenly (अचानक)","summer (गर्मी)","surface (सतह)","tall (अग्लो)","town (शहर)","tried (प्रयास)","voice (आवाज)","warm (न्यानो)","weather (मौसम)","wide (विस्तृत)","wild (जंगली)","winter (जाडो)","within (भित्र)","age (उमेर)","ask (सोध्नु)","baby (बच्चा)","bright (उज्ज्वल)","business (व्यापार)","buy (किन्न)","case (मामला)","catch (क्याच)"]
    
    var  porWord = ["aceitar","cuidar","poderia","apreciar","acontecer","conduzir","aberto","reduzir","resolver","ensinar","conta","transportar","contagem","examinar","ódio","aprender","ordem","remeter","agitar","dizer","alcançar","captura","cobertura","existir","ter","deixar","deveria","refletir","deve","tender","ato","causa","criar","esperar","cabeça","emprestar","próprio","recusar","compartilhar","teste","adicionar","mudança","cruz","experiência","ouvir","deixar","passar","agradecer","admitir","carga","chorar","explicar","ajuda","mentira","pagar","referir","deveria","pensar","afetar","verificar","corte","manifestar","esconder","como","realizar","lançamento","gritar","jogar","escolher","dano","estender","bater","limite","escolher","permanecer","mostrar","toque","concordar","reclamar","dança","enfrentar","segurar","link","lugar","lembrar","fechar","trem","objetivo","limpo","acordo","falhar","esperança","ouvir","plano","remover","cantar","viagem","permitir","claro","decidir","queda","machucar","vivo","jogar","repetir","sentar-se","tratar","resposta","subir","entregar","apertar","identificar","olhar","ponto","substituir","sono","tentar","aparecer","fechar","demanda","alimentação","imaginar","perder","preferir","resposta","sorriso","vez","aplicar","coletar","negar","sentir","melhorar","amor","preparar","relatório","classificar","compreender","argumentar","vir","depender","luta","incluir","fazer","apresentar","representar","som","utilização","organizar","cometer","descrever","preencher","aumento","gerir","imprensa","necessårio","falar","costumava","chegar","comparar","encontrar","indicar","marca","evitar","descanso","suporte","visita","perguntar","queixar-se","destruir","terminar","influência","produzir","resultado","começar","voto","ataque","completo","desenvolver","caber","informar","pode","promessa","retorno","estado","esperar","evitar","preocupação","morrer","voar","pretender","média","proteger","revelar","ficar","andar","base","confirmar","desaparecer","dobra","introduzir","medida","provar","anel","vara","querer","ser","conectar","descobrir","seguir","convidar","encontrar","fornecer","aumento","parar","advertir","bater","considerar","discutir","forcar","envolver","mencionar","publicar","rolo","estudo","lavar","tornar-se","consistem","dividir","esquecer","juntar","pode","puxar","correr","suceder","assistir","começar","contato","fazer","perdoar","salto","mente","empurrar","salvar","sofrer","uso","acreditar","conter","desenhar","forma","manter","perder","colocar","dizer","sugerir","vontade","pertencer","continuar","vestido","encontrado","chutar","mover","levantar","ver","ganhar","quebrar","contribuir","bebida","ganho","matar","deveria","chegar","parecer","fornecimento","desejo","construir","controle","conduzir","obter","bater","necessidade","ler","vender","apoio","maravilha","queimar","cozinheiro","gota","dar","saber","aviso","perceber","enviar","supor","trabalho","comprar","cópia","comer","ir","passado","obter","receber","separar","sobreviver","preocupação","chamada","correto","permitir","crescer","rir","ocorrer","reconhecer","servir","ter","pode","custo","encorajar","oferta","registro","conjunto","falar","escrever","sobre","depois","novamente","ar","todos","ao longo","também","um","e","outro","qualquer","são","como","em","longe","para trás","ser","porque","antes","abaixo","entre","ambos","mas","por","pode","vir","dia","diferente","para baixo","cada","final","cada","encontrar","primeiro","a partir de","dar","ir","bom","grande","casa","como","pouco","longo","olhar","feito","fazer","homem","muitos","pode","me","nome","nunca","novo","próximo","parte","pessoas","lugar","colocar","ler","direito","mesmo","dizer","ver","ela","deveria","mostrar","pequeno","alguns","algo","som","ainda","dizer","coisa","pensar","este","querer","água","nós","escrever","ano","você","sua","capaz","acima","através de","adicionar","contra","quase","entre","animal","resposta","tornar-se","atrás","melhor","preto","o melhor","corpo","livro","menino","chamada","não pode","carro","mudança","crianças","cidade","fechar","frio","país","curso","corte","cão","feito","porta","desenhar","durante","cedo","terra","comer","suficiente","exemplo","olho","face","família","longe","pai","sentir","pés","fogo","peixe","alimento","frente","verde","grupo","crescer","mão","dificil","ouvido","se","idéia","importante","dentro","manter","tipo","conhecido","terra","mais tarde","aprender","deixar","letra","vida","luz","vivo","fazer","noite","nada","aberto","ordem","página","papel","peças","talvez","imagem","jogar","pronto","vermelho","lembrar","descanso","sala","correr","escola","mar","segundo","visita","vários","curto","mostrados","em breve","espaço","história","sol","certo","tabela","hoje","disse","levou","topo","árvore","tentar","vez","Unido","até","uso","geralmente","branco","inteiro","vento","sem","ainda","jovem","sozinho","já","sou","algum","área","bola","bonito","começo","azul","barco","fundo","caixa","trazer","construir","cuidado","cuidadosamente","realizadas","centro","verificar","vinda","comum","completo","escuro","profundidade","distância","fazer","seca","fácil","ou","todos","tudo","queda","rápido","campo","finalmente","andar","seguir","pé","amigo","jogo","ficando","menina","vidro","vai","ouro","aconteceu","Tendo em","coração","pesado","realizada","cavalo","quente","hora","cem","gelo","em vez","se","trabalho","guardado","linguagem","deixar","vamos","lista","mais","baixa","principal","mapa","montanha","música","necessário","passado","planta","pobre","possível","poder","provavelmente","problema","pergunta","rapidamente","chuva","rio","estrada","cientista","neve","alguém","especial","parar","forte","de repente","verão","superfície","alto","cidade","experimentado","voz","quente","clima","amplo","selvagem","inverno","dentro","idade","perguntar","bebê","brilhante","negócio","comprar","caso","pegar"]
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var backbtn: UIButton!
    @IBOutlet weak var nextbtn: UIButton!
    @IBOutlet weak var textField1: UITextField!
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var bannerView: GADBannerView!
    var timesClicked = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textField1.delegate = self
        
        let request = GADRequest()
        request.testDevices = [kGADSimulatorID]
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(request)
        
        label1.text = enWord[timesClicked]
        nextbtn.applyDesign()
        backbtn.applyDesign()
       
        updateScore()
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
   
    
    @IBAction func back1(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
   
    @IBAction func next1(_ sender: UIButton) {
        let numberNotInArray = timesClicked + 1
        if (numberNotInArray < enWord.count){
          if(textField1.text == porWord[timesClicked]){
       
            timesClicked = timesClicked + 1
            textField1.text = ""
            label1.text = enWord[timesClicked]
            updateScore()
        }
          else if(textField1.text != porWord[timesClicked]){
            timesClicked = timesClicked + 0
            label1.text = enWord[timesClicked]
            textField1.text = ""
            updateScore()
            }}
        else{
            timesClicked = 0
            textField1.text = ""
            label1.text = enWord[timesClicked]
            updateScore()
            
            
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField1.resignFirstResponder()
        return(true)
    }
    func updateScore(){
        scoreLabel.text = " score \(timesClicked)" + "/" + " \(enWord.count)"
    }

    
}
extension UIButton {
    func applyDesign(){
        
        self.layer.cornerRadius = self.frame.height / 2
        
        
}
   
}



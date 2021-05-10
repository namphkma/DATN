package com.hellokoding.sso.resource.controller;

import com.hellokoding.sso.resource.config.CookieUtil;
import com.hellokoding.sso.resource.dto.NewsDto;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.util.Arrays;

@Controller
public class ResourceController {
    private static final String jwtTokenCookieName = "JWT_TOKEN";

    @RequestMapping("/")
    public String home() {
        return "redirect:/index";
    }

    @GetMapping("/index")
    public String protectedResource() {
        return "index";
    }

    @GetMapping("/news/{id}")
    public String getNewsById(Model model) {
        NewsDto newsDto = new NewsDto();
        newsDto.setTitle("Thêm 85 ca mắc Covid-19 mới, Lào đang bước vào \"đợt lây nhiễm lịch sử\"");
        newsDto.setContent(Arrays.asList(
                "Ủy ban chuyên trách Quốc gia về phòng chống ",
                "Đánh giá về tình hình dịch bệnh, Thứ trưởng Bộ Y tế Lào Phouthone Meuangpak cho rằng \" đây là đợt lây nhiễm lịc\n" +
                        "h sử\", vì chỉ trong tháng 4, Lào đã ghi nhận 709 ca mắc mới, gấp 20 lần tổng số ca bệnh của năm 2020.",
                "Trước diễn biến ngày càng phức tạp của dịch bệnh, nhất là thủ đô Vientiane với hơn 500 ca, Lào xác định việc tậ\n" +
                        "p trung truy vết các đối tượng lây nhiễm cùng lịch trình di chuyển của họ để thực hiện việc lấy mẫu xét nghiệm, cách\n" +
                        " ly, điều trị là nhiệm vụ cấp bách nhằm dập tắt đợt dịch Covid-19 đang bùng phát.",
                "Phó Thủ tướng Lào Kikeo Khaykhamphithoune, Trưởng Ban Chuyên trách Quốc gia về phòng chống Covid-19 của Lào vừa\n" +
                        " chủ trì hội nghị bàn một số biện pháp ưu tiên để cắt đứt hoàn toàn các chuỗi lây nhiễm, được xác định đã lên đến F3\n" +
                        ". Theo đó, sẽ khẩn trương nâng cao năng lực xét nghiệm đáp ứng nhu cầu ngày càng tăng hiện nay; triển khai phun thuố\n" +
                        "c khử trùng, đẩy mạnh tiêm vaccine phòng Covid-19 cho dân. Hiện đã có gần 171.500 người được tiêm mũi thứ nhất, tron\n" +
                        "g khi hơn 65.500 người đã được tiếp cận đủ hai mũi vaccine. Lào phấn đấu cuối năm nay có 22% dân số được tiêm.",
                "Tổ chức Y tế thế giới (WHO) cũng đã giúp Lào tổ chức các khóa đào tạo chuyên môn cho lực lượng phục vụ phòng ch\n" +
                        "ống dịch tại các bệnh viện dã chiến mà Lào vừa mới lập ra trong mấy ngày qua."
        ));
        newsDto.setImg("https://icdn.dantri.com.vn/thumb_w/640/2021/04/30/lao-1619796466115.jpg");
        model.addAttribute("newsDto",newsDto);
        return "single-page";
    }

    @RequestMapping("/logout")
    public String logout(HttpServletResponse httpServletResponse) {
        CookieUtil.clear(httpServletResponse, jwtTokenCookieName);
        return "redirect:/";
    }
}

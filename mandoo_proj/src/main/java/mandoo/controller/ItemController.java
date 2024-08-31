package mandoo.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import mandoo.DTO.ItemDTO;
import mandoo.service.ItemService;

@WebServlet("/Item")
@MultipartConfig
public class ItemController extends HttpServlet {
    private ItemService itemService = new ItemService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        List<ItemDTO> itemList = itemService.getAllItems();
        request.setAttribute("itemList", itemList);

        request.getRequestDispatcher("/HTML/품목코드조회.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        if ("add".equals(action)) {
            String itemCode = request.getParameter("itemCode");
            String itemName = request.getParameter("itemName");

            // 이미지 파일 업로드 처리
            Part filePart = request.getPart("image");
            if (filePart != null && filePart.getSize() > 0) {
                String fileName = itemCode + ".jpg";  // 파일명은 itemCode.jpg로 설정
                String uploadPath = getServletContext().getRealPath("/image");
                File file = new File(uploadPath, fileName);
                filePart.write(file.getAbsolutePath());
            }

            ItemDTO item = new ItemDTO(itemCode, itemName);
            itemService.addItem(item);
            response.sendRedirect("Item");

        } else if ("update".equals(action)) {
            String itemCode = request.getParameter("itemCode");
            String itemName = request.getParameter("itemName");

            ItemDTO item = new ItemDTO(itemCode, itemName);
            itemService.updateItem(item);
            response.sendRedirect("Item");

        } else if ("delete".equals(action)) {
            String itemCode = request.getParameter("itemCode");
            itemService.deleteItem(itemCode);
            response.sendRedirect("Item");
        }
    }
}

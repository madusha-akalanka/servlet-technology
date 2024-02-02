package lk.ijse.dep11.webssr.to;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class ItemTo implements Serializable {

    private String code;
    private String description;
    private Integer qty;
    private Double unitPrice;
}

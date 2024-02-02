package lk.ijse.dep11.webssr.to;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class CustomerTo implements Serializable {

    private String id;
    private String name;
    private String address;
}
